
import os, time
file='/home/conor/Dropbox/05_PROGRAMS/17_steno/stroke_sonification/strokes.log'
moddate1 = os.stat(file)[8]
moddate2 = os.stat(file)[8] # there are 10 attributes this call returns and you want the next to last
while True:
    while moddate1==moddate2:
        moddate1 = os.stat(file)[8]
        print(".")
    fileHandle = open(file, "r")
    lineList = fileHandle.readlines()
    fileHandle.close()
    print(lineList[len(lineList) - 1])
    moddate2 = os.stat(file)[8]
    moddate1 = os.stat(file)[8]

    print("change!")
    print("change!")
    print("change!")
    time.sleep(0.5)