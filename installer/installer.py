from tkinter import *
from tkinter import messagebox
from tkinter import font 
import os 


def install():
    command_list = [
        "cd C:/",
        "mkdir Hork",
        "cd Hork",
        "curl https://github.com/User12778309/Hork/blob/main/final_build/Hork/window_size_plugin.dll > windows_size_plugin.dll",
        "curl https://github.com/User12778309/Hork/blob/main/final_build/Hork/uninstaller.exe > uninstaller.exe",
        "curl https://github.com/User12778309/Hork/blob/main/final_build/Hork/macro_data.json > macro_data.json",
        "curl https://github.com/User12778309/Hork/blob/main/final_build/Hork/hork_project.exe > hork_project.exe",
        "curl https://github.com/User12778309/Hork/blob/main/final_build/Hork/hack_selector.exe > hack_selector.exe",
        "curl https://github.com/User12778309/Hork/blob/main/final_build/Hork/hack.exe > hack.exe",
        "curl https://github.com/User12778309/Hork/blob/main/final_build/Hork/flutter_windows.dll > flutter_windows.dll",
        "mkdir data",
        "cd data",
        "curl https://github.com/User12778309/Hork/blob/main/final_build/Hork/data/icudtl.dat > icudtl.dat",
        "curl https://github.com/User12778309/Hork/blob/main/final_build/Hork/data/app.so > app.so",
        "mkdir flutter_assets",
        "cd flutter_assets",
        "curl https://github.com/User12778309/Hork/blob/main/final_build/Hork/data/flutter_assets/NOTICES.Z > NOTICES.Z",
        "curl https://github.com/User12778309/Hork/blob/main/final_build/Hork/data/flutter_assets/FontManifest.json > FontManifest.json",
        "curl https://github.com/User12778309/Hork/blob/main/final_build/Hork/data/flutter_assets/AssetManifest.json > AssetManifest.json",
        "curl https://github.com/User12778309/Hork/blob/main/final_build/Hork/data/flutter_assets/AssetManifest.bin > AssetManifest.bin",
        "mkdir shaders",
        "curl https://github.com/User12778309/Hork/blob/main/final_build/Hork/data/flutter_assets/shaders/ink_sparkle.frag > shaders/ink_sparkle.frag",
        "mkdir packages",
        "mkdir fonts",
        "mkdir assets",
        "curl https://github.com/User12778309/Hork/blob/main/final_build/Hork/data/flutter_assets/assets/data.json > assets/data.json",
        "curl https://github.com/User12778309/Hork/blob/main/final_build/Hork/data/flutter_assets/fonts/MaterialIcons-Regular.otf > fonts/MaterialIcons-Regular.otf",
        "mkdir packages/alarm",
        "mkdir packages/alarm/assets",
        "curl https://github.com/User12778309/Hork/blob/main/final_build/Hork/data/flutter_assets/packages/alarm/assets/long_blank.mp3 > packages/alarm/assets/long_blank.mp3",
        "curl https://github.com/User12778309/Hork/blob/main/final_build/Hork/data/flutter_assets/packages/alarm/assets/not_blank.mp3 > pachages/alarm/assets/not_blank.mp3"
    ]

    for command in command_list:
        os.system(command)

    messagebox.showinfo("Hork Installer","Installation Success :) !!!!")

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