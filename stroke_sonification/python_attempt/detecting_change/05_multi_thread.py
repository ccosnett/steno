#! /home/conor/anaconda3/envs/py383/bin/python


import os, time
from gtts import gTTS
import os
from multiprocessing import Pool
file='/home/conor/Dropbox/05_PROGRAMS/17_steno/stroke_sonification/strokes.log'



# for sound in ['Super','califragilistic','expialidocious']:
#     language ='en'
#     myobj = gTTS(text=sound, lang=language, slow=False)
#     myobj.save(sound+".mp3")



def play(sound):
    os.system("play " + sound + ".mp3" + " tempo 2")



with Pool(5) as p:
    p.map(play, ['Super','califragilistic','expialidocious'])
