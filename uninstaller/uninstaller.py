from tkinter import messagebox
import os 

if messagebox.askquestion("Hork uninstaller","Would you uninstall hork software ? ") == "yes":
    try:
        os.remove("C:/test")
    except:
        messagebox.showerror("Hork uninstaller","Permission denied !!!!")

else:
    messagebox.askquestion("Hork uninstaller","Continue to use hork software (-; ")