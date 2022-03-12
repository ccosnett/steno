#! /home/conor/anaconda3/envs/py383/bin/python


import os, time
from gtts import gTTS
import os
import timeit

# start = timeit.timeit()
# print("hello")
# end = timeit.timeit()
# print(end - start)
file='/home/conor/Dropbox/05_PROGRAMS/17_steno/stroke_sonification/strokes.log'



def cleaner1(text):
    return text.partition("(")[2].partition(" ")[0]









def stroke_2_phoneme(stroke):
    dic = {
        "WEL": "well"
        ,"someKey":"someValue"
        ,"b":"two"
        , "KOPL": "com"
        , "g": "gamma"
    }
    if stroke in dic:
        return dic[stroke]
    else:
        return "redflag"

#we could do a parse tree and parse PL into M
    #identify the first sound, the vowel and the final sound

#print(stroke_2_phoneme("WEL"))



#print('hello world')





# fileHandle = open(file, "r")
# lineList = fileHandle.readlines()
# fileHandle.close()
# text=lineList[len(lineList) - 1]
#
#
#
# mytext = cleaner1(text)
def speak(mytext):
    if os.path.isfile('./'+mytext+".mp3"):
        os.system("play " + mytext + ".mp3"+" tempo 0.5")
        print("did not create file")
    else:
        print(mytext)
        language = 'en'
        myobj = gTTS(text=mytext, lang=language, slow=False)
        myobj.save(mytext+".mp3")



#print(stroke_2_phoneme("KOPL"))





def mechanism():
    # EXTRACTING LAST LINE
    fileHandle = open(file, "r")
    lineList = fileHandle.readlines()
    fileHandle.close()
    last_line = lineList[len(lineList) - 1]

    # EXTRACTING STROKE FROM LAST LINE
    stroke = cleaner1(last_line)

    # LOOKING UP STROKE IN PHONEME DICTIONARY
    phoneme = stroke_2_phoneme(stroke)

    # CREATING FILE OR SPEAKING IT
    speak(phoneme)
    #print("mechanism was executed")
    #print(bob)


def speakline(n):
    fileHandle = open(file, "r")
    lineList = fileHandle.readlines()
    fileHandle.close()
    line_n = lineList[len(lineList) - n]

    # EXTRACTING STROKE FROM LAST LINE
    stroke = cleaner1(line_n)

    # LOOKING UP STROKE IN PHONEME DICTIONARY
    phoneme = stroke_2_phoneme(stroke)

    # CREATING FILE OR SPEAKING IT
    speak(phoneme)
    print("mechanism was executed")
    # print(bob)


def mechanism2(d):
    # EXTRACTING LAST LINE
    fileHandle = open(file, "r")
    lineList = fileHandle.readlines()
    fileHandle.close()
    last_line = lineList[len(lineList) - 1]

    # EXTRACTING STROKE FROM LAST LINE
    stroke = cleaner1(last_line)

    # LOOKING UP STROKE IN PHONEME DICTIONARY
    phoneme = stroke_2_phoneme(stroke)

    # CREATING FILE OR SPEAKING IT
    speak(phoneme)
    print("mechanism was executed")
    #print(bob)

mechanism()