#! /home/conor/anaconda3/envs/py383/bin/python


import os, time
from gtts import gTTS
import os
import timeit
from functions import *
import subprocess

#file='/home/conor/Dropbox/05_PROGRAMS/17_steno/stroke_sonification/strokes.log'
file='/home/conor/strokes.log'



print("\n\n")
with open('dic.json') as f:
    dic = json.load(f)
for key, value in dic.items():
    if os.path.isfile('./mp3s/'+value+".mp3"):
        print(value,"              already in library")
    else:
        print(value," was SONIFIED NOW")
        language = 'en'
        myobj = gTTS(text=value, lang=language, slow=False)
        myobj.save('./mp3s/'+value+".mp3")
print("\n\n")

for i in range(5):
    time.sleep(0.2)
    print(str(5-i))
time.sleep(.5)
print("go")




len1=file_len(file)
len2=file_len(file)



while True:
    while len1==len2:
        len2 = file_len(file)
        print_last_line()
        time.sleep(0.01)
    subprocess.Popen(["python", "clean_machine.py","&"])
    len1 = file_len(file)
    len2 = file_len(file)


#
# while True:
#     while len1==len2:
#         for i in range(10):
#             len2 = file_len(file)
#             print_last_line()
#         with open('dic.json') as f:
#             dic = json.load(f)
#         for key, value in dic.items():
#             if os.path.isfile('./mp3s/' + value + ".mp3"):
#                 ""
#             else:
#                 language = 'en'
#                 myobj = gTTS(text=value, lang=language, slow=False)
#                 myobj.save('./mp3s/' + value + ".mp3")
#     subprocess.Popen(["python", "clean_machine.py","&"])
#     len1 = file_len(file)
#     len2 = file_len(file)
