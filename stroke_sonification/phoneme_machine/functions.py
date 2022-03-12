#! /home/conor/anaconda3/envs/py383/bin/python


import os, time
from gtts import gTTS
import os
import timeit
import json

#file='/home/conor/Dropbox/05_PROGRAMS/17_steno/stroke_sonification/strokes.log'
file='/home/conor/strokes.log'
with open('dic.json') as f:
    dic = json.load(f)




def cleaner1(text):
    return text.partition("(")[2].partition(" ")[0]


def stroke_2_phoneme(stroke):
    if stroke in dic:
        return dic[stroke]
    else:
        return "redflag"


def file_len(file):
    fileHandle = open(file, "r")
    lineList = fileHandle.readlines()
    fileHandle.close()
    return len(lineList)


def speaky(mytext):
    os.system("play ./mp3s/" + mytext + ".mp3" + " tempo 2"+ "&")



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
    print(phoneme)
    print(phoneme)
    print(phoneme)
    print(phoneme)
    print(phoneme)
    print(phoneme)

    # CREATING FILE OR SPEAKING IT
    speaky(phoneme)


def print_last_line():
    fileHandle = open(file, "r")
    lineList = fileHandle.readlines()
    fileHandle.close()
    last_line = lineList[len(lineList) - 1]
    print("hi")
    print("hi")
    print("hi")
    print("hi")
    print("hi")
    print("hi")
    print(last_line.partition("(")[2].partition(")")[0])
