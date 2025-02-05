from tkinter import messagebox
import os 

if messagebox.askquestion("Hork unstaller","Are you sure to uninstall Hork software ? ") == "yes":
     os.system("del C:/Users/mathy/OneDrive/Bureau/testtt")

else:
    messagebox.showinfo("Hork unstaller","Good Hork software usage ;)")
