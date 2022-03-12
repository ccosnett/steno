#! /home/conor/anaconda3/envs/py383/bin/python


import os, time
from gtts import gTTS
import os
import timeit

start = timeit.timeit()
print("hello")
end = timeit.timeit()
print(end - start)
file='/home/conor/Dropbox/05_PROGRAMS/17_steno/stroke_sonification/strokes.log'



from functions import *


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



print(stroke_2_phoneme("KOPL"))



moddate1 = os.stat(file)[8]
moddate2 = os.stat(file)[8] # there are 10 attributes this call returns and you want the next to last


def mechanism(bob):
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
    print(bob)


#
#

from multiprocessing import Process

p = Process(target=mechanism, args=('bob',))
start = timeit.timeit()
end = timeit.timeit()
for i in range(10):
    print('TIMING')
print(end - start)

import subprocess

len1=1
len2=1




# mechanism()

len1=file_len(file)
len2=file_len(file)



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


def speak_lines(num):
    if num==1:
        speakline(1)
    elif num==2:
        speakline(2)
    else:
        speakline(3)





while True:

    while len1==len2:
        print(len2)
        len2 = file_len(file)
        print(".")
    subprocess.Popen(["python", "clean_machine.py","&"])
    len1 = file_len(file)
    len2 = file_len(file)











while True:

    while len1==len2:
        print(len2)
        len2 = file_len(file)
        print(".")

    start = timeit.timeit()
    num=abs(len1-len2)
    speak_lines(num)
    # print("1,  = ", len1)
    # print("2,  = ", len2)
    # print("num  = ",num)
#    time.sleep(1)
    len1 = file_len(file)
    for i in range(100000):
        print(start)
    len2 = file_len(file)
    end = timeit.timeit()
    for i in range(100000):
        print(end - start)

        # subprocess.Popen(["python", "testmachine.py","&"])
    #os.system("python machine.py & python machine.py")
    #os.system("python machine.py &")

    #moddate2 = os.stat(file)[8]
 #   os.system("python machine.py &")








