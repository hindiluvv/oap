# -*- coding: utf-8 -*-
from setuphelpers import *

r"""

UninstallKey                           Software                                                              Version             Uninstallstring
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
HomeBusinessRetail - fr-fr             Microsoft Office Famille et Petite Entreprise 2016 - fr-fr            16.0.9029.2167      "C:\Program Files\Common Files\Microsoft Shared\ClickToRun\OfficeClickToRun.exe" scenario=install scenariosubtype=ARP sourcetype=None productstoremove=HomeBusinessRetail.16_fr-fr_x-none culture=fr-fr version.16=16.0
{90150000-008F-0000-1000-0000000FF1CE} Office 15 Click-to-Run Licensing Component                            15.0.4433.1508      MsiExec.exe /I{90150000-008F-0000-1000-0000000FF1CE}
{90160000-008F-0000-1000-0000000FF1CE} Office 16 Click-to-Run Licensing Component                            16.0.9029.2167      MsiExec.exe /I{90160000-008F-0000-1000-0000000FF1CE}
{90160000-008C-0000-0000-0000000FF1CE} Office 16 Click-to-Run Extensibility Component                        16.0.9029.2167      MsiExec.exe /X{90160000-008C-0000-0000-0000000FF1CE}
{90160000-008C-040C-0000-0000000FF1CE} Office 16 Click-to-Run Localization Component                         16.0.9029.2167      MsiExec.exe /X{90160000-008C-040C-0000-0000000FF1CE}


    <COMPANYNAME Value="Company Name" />

"""
# Declaring global variables - Warnings: 1) WAPT context is only available in package functions; 2) Global variables are not persistent between calls

bin_contains = "accessruntime_4288"
app_uninstallkey = "Office16.AccessRT"
configuration_xml_content = r"""<Configuration Product="AccessRT">
    <Display Level="None" CompletionNotice="no" SuppressModal="yes" AcceptEula="yes" />
    <Logging Type="standard" Path="C:\Windows\Temp" Template="Microsoft_Access_2016_Runtime_Setup(*).log" />
    <Setting Id="SETUP_REBOOT" Value="Never" />
    <Updates Enabled="False" />
</Configuration>"""
error_30066_msg = "Windows Installer and Click-to-Run editions of Office programs don't get along for this version, so you can only have one type installed at a time. Please try installing the Click-to-Run edition of Office instead, or uninstall your other Click-to-Run based Office programs and try this installation again."


def install():
    # Declaring local variables
    package_version = control.get_software_version()
    bin_name = glob.glob("*%s*.exe" % bin_contains)[0]
    error_30066 = False

    # Installing the software
    print("Installing: %s (%s)" % (control.name, package_version))
    run(bin_name + r" /quiet /extract:tmp")

    # write configuration.xml as a file
    with open(r"tmp\configuration.xml", "w") as f:
        f.write(configuration_xml_content)

    if not control.architecture == "x64":
        # Uninstalling conflict office products
        for to_uninstall in installed_softwares(name="Office 16 Click-to-Run Extensibility Component 64-bit Registration"):
            print("Removing: %s (%s)" % (to_uninstall["name"], to_uninstall["version"]))
            run(uninstall_cmd(to_uninstall["key"]))
            wait_uninstallkey_absent(to_uninstall["key"])

    # Avoiding install on MSO Professional Editions since it is already embed
    detect_office_pro = installed_softwares(name=".*Office.*Prof")

    # run installer
    if not detect_office_pro:
        # Detecting Click-to-Run MSO since it avoid install
        for to_uninstall in installed_softwares(name=".*Office.*"):
            if "OfficeClickToRun.exe".lower() in to_uninstall["uninstall_string"].lower():
                error_30066_app = to_uninstall["name"]
                error_30066 = True
        if error_30066:
            print(error_30066_msg)
            print("Impacted product: %s" % error_30066_app)
        else:
            install_exe_if_needed(
                r"tmp\setup.exe",
                silentflags="/config configuration.xml",
                key=app_uninstallkey,
                min_version=package_version,
                timeout=900,
            )

        # Avoiding the usage by WAPT of the app built-in Uninstallstring
        uninstallkey.remove(app_uninstallkey)

    else:
        print("Install skipped since %s is detected" % detect_office_pro[0]["name"])


def uninstall():
    # Uninstalling the software with different UninstallString
    for to_uninstall in installed_softwares(uninstallkey=app_uninstallkey):
        print("Removing: %s (%s)" % (to_uninstall["name"], to_uninstall["version"]))
        killalltasks(control.impacted_process.split(","))

        # write configuration.xml as a file
        setup_uninstall_path = to_uninstall["uninstall_string"].split("/uninstall")[0]
        silent_uninstall_file_path = makepath(systemdrive, "Windows", "Temp", "configuration.xml")
        with open(silent_uninstall_file_path, "w") as f:
            f.write(configuration_xml_content)

        # app_uninstall_cmd = [setup_uninstall_path, "/uninstall  ACCESSRT /config %s" % silent_uninstall_file_path]
        app_uninstall_cmd = '%s /uninstall ACCESSRT /config "%s"' % (setup_uninstall_path, silent_uninstall_file_path)

        run(app_uninstall_cmd, timeout=1200)
        wait_uninstallkey_absent(to_uninstall["key"])