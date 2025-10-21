x = int(input())
a = []
a.append(True);
for x in range(1,1+1):
a.append(True);
for i in range(2,x+1):
    if a[i]:
        print(i)
        for j in range(2,int(x/i)):
            a[j*i] = False 
            print(a)
            x = string(input())
        