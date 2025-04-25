'''
    Olympics Medals
    Author: Saksham Rathi
'''

from argparse import ArgumentParser as ap
import os

parser = ap()
parser.add_argument('--path', type=str, required = True)
args = parser.parse_args()

# dictionary for the data
totalData = {}

# looping through the directory
for fileName in os.listdir(args.path):
    fileName=args.path+'/'+fileName
    # read the file
    with open(fileName, "r") as file:
        for line in file:
            linelist=line.split('-')
            if len(linelist)==4:
                for i in range(len(linelist)):
                    linelist[i]=linelist[i].strip()
                if linelist[0] not in totalData.keys():
                    totalData[linelist[0]]=[int(linelist[1]),int(linelist[2]),int(linelist[3])]
                else:
                    for j in range(3):
                        totalData[linelist[0]][j]+=int(linelist[j+1])


    # loop through data of file and set the values for the data
#print(totalData)

# sort as per gold medals and break ties lexicographically
sorted_totalData1=sorted(totalData, key =lambda x: x)
totalData1={}
for i in sorted_totalData1:
    totalData1[i]=totalData[i]
sorted_totalData=sorted(totalData1,key= lambda x : totalData[x][0],reverse=True )

totalData2={}
for i in sorted_totalData:
    totalData2[i]=totalData[i]
print(totalData2)