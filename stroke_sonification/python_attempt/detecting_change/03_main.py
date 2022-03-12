import os, time
from gtts import gTTS
import os
file='/home/conor/Dropbox/05_PROGRAMS/17_steno/stroke_sonification/strokes.log'



def cleaner1(text):
    return text.partition("(")[2].partition(" ")[0]









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

#print(stroke_2_phoneme("WEL"))



#print('hello world')





fileHandle = open(file, "r")
lineList = fileHandle.readlines()
fileHandle.close()
text=lineList[len(lineList) - 1]



mytext = cleaner1(text)
def speak(mytext):
    if os.path.isfile('./'+mytext+".mp3"):
        os.system("mpg321 " + mytext + ".mp3")
        print("did not create file")
    else:
        print(mytext)
        language = 'en'
        myobj = gTTS(text=mytext, lang=language, slow=False)
        myobj.save(mytext+".mp3")







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
    speak(mytext)
    print("change!")
    print("change!")
    print("change!")
    time.sleep(2)