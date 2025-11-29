var
  f: file of char;
  ch: char;
  s: string;
  i: integer;
begin
  assign(f, 'D:\лабораторная13\task1.txt');
  reset(f);
  s := '';
  while not eof(f) do
  begin
    read(f, ch);
    s := s + ch;
  end;
  close(f);

  rewrite(f);
  i := 1;
  while (i <= length(s)) and (s[i] <> ' ') do
  begin
    write(f, s[i]);
    i := i + 1;
  end;
  close(f);
end.