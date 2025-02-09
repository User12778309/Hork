from tkinter import *
from tkinter import messagebox
from tkinter import font 
import os 


def install():
    dir_to_create_list = ["/Hork","/Hork/macro","/Hork/assets"]
    for dir_to_create in dir_to_create_list:
        os.mkdir(dir_to_create)
    messagebox.showinfo("Hork Installer","Install Success :) !!!")

win = Tk()

bold_font = font.Font(family="Helvetica", size=40, weight="bold")

win.geometry("700x500")
win.title("Hork installer")
win.config(bg="#9aec77")

macro_path_frame = Frame(win)
macro_path_frame.pack(expand=YES)

macro_path_label = Label(win,text="Hork Installer",font=bold_font,bg="#9aec77",fg="#FFFFFF",)
macro_path_label.pack(expand=YES)

install_button = Button(win,text="Install",font=(bold_font,15),height=2,width=15,command=install)
install_button.pack(expand=YES)


win.mainloop()