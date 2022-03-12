import os, time




def cleaner1(text):
    return text.partition("(")[2].partition(" ")[0]



file='/home/conor/Dropbox/05_PROGRAMS/17_steno/stroke_sonification/strokes.log'
fileHandle = open(file, "r")
lineList = fileHandle.readlines()
fileHandle.close()
text=lineList[len(lineList) - 1]
#print(cleaner1(text))





def stroke_2_phoneme(stroke):
    dic = {
        "WEL": "well"
        ,"a":"1"
        ,"b":"two"
        , "KOPL": "com"
        , "g": "gamma"
    }
    return dic[stroke]

#we could do a parse tree and parse PL into M
    #identify the first sound, the vowel and the final sound

print(stroke_2_phoneme("WEL"))