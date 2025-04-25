import sys
n=len(sys.argv)

if n==3:
    lang=sys.argv[2]
    sett=set({})
    list1=[]
    with open("translations.csv", "r") as file:
        for line in file:
            if lang in line:
                linelist=line.split(',')
                sett.add(linelist[linelist.index(lang)+1])
    for i in sett:
        list1.append(i)
    list1.sort(reverse=True)
    for i in range(len(list1)):
        list1[i]=list1[i].strip()
    list1=list(set(list1))
    list1.sort(reverse=True)
    print(list1)

def f():
    lang1=sys.argv[2]
    lang2=sys.argv[3]
    langs=['english','hindi','punjabi']
    interlang=langs[3-(langs.index(lang1)+langs.index(lang2))]
    lang1no=langs.index(lang1)
    lang2no=langs.index(lang2)
    interlangno=langs.index(interlang)
    l0="english"
    l1="hindi"
    l2="punjabi"
    straight=[]
    gay=[]
    with open("translations.csv", "r") as file:
        for line in file:
            linelist=line.split(",")
            for i in range(4):
                linelist[i]=linelist[i].strip()
            lineLangWord=[0,0,0]
            lineLangWord[langs.index(linelist[0])]=linelist[1]
            lineLangWord[langs.index(linelist[2])]=linelist[3]
            gay.append(lineLangWord)
            for i in range(3):
                straight.append(lineLangWord[i])
    allang=[]
    straightNo={}
    finalstraight={}
    for i in straight:
        straightNo[i]=straight.count(i)
    setstraightNo=set(straightNo)
    for i in setstraightNo:
        finalstraight[i]=straightNo[i]
    for i in finalstraight:
        if finalstraight[i]==2:
            langofWord=straight.index(i)%3
            listoflistofsame=[]
            for j in gay:
                if j[langofWord]==i:
                    listoflistofsame.append(j)
            if 0 in listoflistofsame[0]:
                listoflistofsame[0][listoflistofsame[0].index(0)]=listoflistofsame[1][listoflistofsame[0].index(0)]
            allang.append(listoflistofsame[0])
            listoflistofsame=[]
    finalset=[]
    for i in gay:
        if i[lang1no]!=0 and i[lang2no]!=0:
            t=[i[lang1no],i[lang2no]]
            tt=tuple(t)
            if tt not in finalset:
                finalset.append(tt)
    finalset.sort()
    return(finalset)
if n==4:
    print(f())
if n==5: 
    l=f()
    k=0
    for i in l:
        if i[0]==sys.argv[4]:
            print(i[1])  
            break 
        k+=1
    if k==len(l):
        print("UNK")        

                

    

