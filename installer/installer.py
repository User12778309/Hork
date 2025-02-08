from tkinter import *
from tkinter import font 

win = Tk()

bold_font = font.Font(family="Helvetica", size=40, weight="bold")

win.geometry("700x500")
win.config(bg="#9aec77")

macro_path_frame = Frame(win)
macro_path_frame.pack(expand=YES)

macro_path_label = Label(win,text="Enter your macro path : ",font=bold_font,bg="#9aec77",fg="#FFFFFF",)
macro_path_label.pack(expand=YES)
macro_path_entry = Entry(win,font=("Arial",40))
macro_path_entry.pack(expand=YES)

install_button = Button(win,text="Install")
install_button.pack(expand=YES)


win.mainloop()