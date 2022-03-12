print('hello world')
from gtts import gTTS
import os




mytext = "stare"
def speak(mytext):
    if os.path.isfile('./'+mytext+".mp3"):
        os.system("mpg321 " + mytext + ".mp3")
        print("did not create file")
    else:
        print(mytext)
        language = 'en'
        myobj = gTTS(text=mytext, lang=language, slow=False)
        myobj.save(mytext+".mp3")
speak("tarantula")

