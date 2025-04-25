listOfList=[]
with open("q2-input.txt","r") as file:
    for line in file:
        linelist=[i.strip() for i in line.split(',')]
        listOfList.append(linelist)
        # for i in range(len(linelist)):
        #     linelist[i]=linelist[i].strip
print(listOfList)
