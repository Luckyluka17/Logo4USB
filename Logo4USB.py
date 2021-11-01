import os
from tkinter import *
import webbrowser
os.system("start start.bat")
os.system("echo ******************** >>logs.txt")
os.system("echo * LOGFILE Logo4USB * >>logs.txt")
os.system("echo ******************** >>logs.txt")
os.system("echo . >>logs.txt")
os.system("echo [%time% and %date%] Started app >>logs.txt")

def creator_page():
    webbrowser.open_new("https://discords.com/bio/p/ll17")


def aide():
    os.system("start aide.html")


def repimg():
    os.system("explorer %cd%\Images")


def engine():
    os.system("echo true >engine.dll")
    os.system("start engine.bat")



window = Tk()
window.geometry("400x350")
window.title("Logo4USB")
window.resizable(width=False, height=False)
window.iconbitmap("icon.ico")

title = Label(window, text="Logo4USB", font=("Courrier", 35))
title.pack()
subtitle = Label(window, text="Ajoutez un logo à votre clé USB", font=("Courrier", 20))
subtitle.pack()
bouton1 = Button(window, text="Démarrer", font=("Courrier", 20), command=engine)
bouton1.pack()
bouton2 = Button(window, text="Répértoire d'images", font=("Courrier", 20), command=repimg)
bouton2.pack()
bouton3 = Button(window, text="Comment faire ?", font=("Courrier", 20), command=aide)
bouton3.pack()
bouton4 = Button(window, text="Quitter le logiciel", font=("Courrier", 20), command=exit)
bouton4.pack()
creator = Label(window, text="Luckyluka 17#5801", font=("Courrier", 11))
creator.pack()


window.mainloop()