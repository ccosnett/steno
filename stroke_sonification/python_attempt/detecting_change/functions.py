#! /home/conor/anaconda3/envs/py383/bin/python


import os, time
from gtts import gTTS
import os
import timeit

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
        os.system("play " + mytext + ".mp3"+" tempo 2")
        print("did not create file")
    else:
        print(mytext)
        language = 'en'
        myobj = gTTS(text=mytext, lang=language, slow=False)
        myobj.save(mytext+".mp3")
        os.system("play " + mytext + ".mp3"+" tempo 2")



#print(stroke_2_phoneme("KOPL"))



#moddate1 = os.stat(file)[8]
#moddate2 = os.stat(file)[8] # there are 10 attributes this call returns and you want the next to last

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

#

from multiprocessing import Process
#
# p = Process(target=mechanism, args=('bob',))
# start = timeit.timeit()
# end = timeit.timeit()
# for i in range(10):
#     print('TIMING')
# print(end - start)

import subprocess

# while True:
#
#
#
#     subprocess.Popen(["python", "testmachine.py","&"])
#     #os.system("python machine.py & python machine.py")
#     #os.system("python machine.py &")

#
#     #moddate2 = os.stat(file)[8]
#  #   os.system("python machine.py &")
#     while moddate1==moddate2:
#         moddate1 = os.stat(file)[8]
#         print(".")




# for i in [0,1,2,3,4,5,6,7,8,9,10]:
#     print(os.stat(file)[i])
#


def file_len(file):
    fileHandle = open(file, "r")
    lineList = fileHandle.readlines()
    fileHandle.close()
    return len(lineList)

# speak(str(file_len(file)))
# speak(str(file_len(file)))
# speak(str(file_len(file)))