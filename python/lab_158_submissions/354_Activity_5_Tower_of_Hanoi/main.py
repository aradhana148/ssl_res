'''
    Tower of Hanoi
    Author: Abhi Jain
'''

'''
Write your code to solve tower of hanoi problem here
Take input from user for number of disks

Output format:
line 1: number of moves(N)
line 2: move1
line 3: move2
...
line N+1: moveN
'''

'''
To solve this problem, you can use the recursive approach.
'''

import argparse
n = argparse.ArgumentParser()
n.add_argument("n", type=int)
args = n.parse_args()
n = args.n
c=[]
def f(start,end,mid,n):
    global c
    if n==1:
        c.append(str(start)+" "+str(end))
        #print(start,end)
        return 1
    else:
        a=f(start,mid,end,n-1)
        c.append(str(start)+" "+str(end))
        #print(start,end)
        b=f(mid,end,start,n-1)
        return a+b+1
    
print(f(1,3,2,n))
for i in c:
    print(i)


