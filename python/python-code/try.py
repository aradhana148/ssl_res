"""
a="hi"
b="bye"
print(a+b)
#print("hi)
l=[a,b,4]
l.pop(1)
print()
def f(x):
    print("hi")
    print(x+1)
    return x+2 
a=f(3)
print(a)"
"""
# d={"s":1,"a":2}
# print(type(d.keys()))

# with open("filtered.csv","w") as file:
#     file.writeline("f,l")
#     file.write("d,s,a")

import pandas as pd
import matplotlib.pyplot as plt
df=pd.read_csv('filtered.csv')
print(df)
print(type(df))