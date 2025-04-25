noofquer=int(input())
l=[]
for _ in range(noofquer):
    l.append(int(input()))
h=l.copy()
l.sort(reverse=True)
maxquer=l[0]
noofPrimes=2*(maxquer)
listofPrimes=[2]
j=0
while j<noofPrimes:
    largestPinList=listofPrimes[j]
    p=largestPinList+1
    cond=0
    while cond<len(listofPrimes):
        cond=0
        for i in listofPrimes:
            if p%i!=0:
                cond+=1
        p+=1
    listofPrimes.append(p-1)
    if (((p-1)-listofPrimes[j])==2):
        
        listofPrimes.append(p-1)
        j+=1
    j+=1    
print(listofPrimes)

for i in range(noofquer):
    print(listofPrimes[h[i]-1])
