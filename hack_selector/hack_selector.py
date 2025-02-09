from colorama import Fore,Style,Back
from urllib.request import urlretrieve
import os 
import json 

os.system("cls")


BANNER = '''
  _   _   ___   ____   _  __     ____   ____    ___       _  _____  ____  _____ 
 | | | | / _ \ |  _ \ | |/ /    |  _ \ |  _ \  / _ \     | || ____|/ ___||_   _|
 | |_| || | | || |_) || ' /     | |_) || |_) || | | | _  | ||  _| | |      | |  
 |  _  || |_| ||  _ < | . \     |  __/ |  _ < | |_| || |_| || |___| |___   | |  
 |_| |_| \___/ |_| \_\|_|\_\    |_|    |_| \_\ \___/  \___/ |_____|\____|  |_|  
                    
       
                       *** Hack selector *** 

'''
print(Fore.LIGHTGREEN_EX )
print(BANNER)

def print_info(macro_num):
    print("---------------------------------> " + str(macro_num) + " <-------------------------------------")
    print("                           Title : " + json_data[str(macro_num)]["title"])
    print("                           Price : " + json_data[str(macro_num)]["price"])
    print("---------------------------------------------------------------------------")

def download_macro(macro_num2):
    download_url = json_data[str(macro_num2)]["download_link"]
    ouput_filename = json_data[str(macro_num2)]["output_filename"] 
    print("---------------------------------------------------------------------->")
    print(Fore.LIGHTWHITE_EX + "[" + Fore.LIGHTGREEN_EX + "INFO" + Fore.LIGHTWHITE_EX + "] DONWLOAD URL : " + download_url)
    print(Fore.LIGHTWHITE_EX + "[" + Fore.LIGHTGREEN_EX + "INFO" + Fore.LIGHTWHITE_EX + "] OUTPUT FILENAME : " + ouput_filename)
    print(Fore.LIGHTWHITE_EX + "[" + Fore.LIGHTGREEN_EX + "INFO" + Fore.LIGHTWHITE_EX + "] Download ...")
    os.system("curl " + download_url + "> " + ouput_filename)
    print(Fore.LIGHTWHITE_EX + "[" + Fore.LIGHTGREEN_EX + "INFO" + Fore.LIGHTWHITE_EX + "] Save as : " + os.getcwd() + ouput_filename)
    print("---------------------------------------------------------------------->")    

with open("macro_data.json","r+") as json_file:
    json_data = json.load(json_file)

    MAX_MACRO = json_data["macro_num"]

    for i in range(MAX_MACRO):
        print_info(i + 1)

print('''***************************************************************************
                  __________________________________
                  |  0 : EXIT | 99 : How to update | 
                  ----------------------------------''')

print(Style.RESET_ALL)

while True: 
    device_input = int(input(Fore.LIGHTWHITE_EX + "[" + Fore.LIGHTGREEN_EX + "+" + Fore.LIGHTWHITE_EX + "] Choose your device : -> "))
    for i2 in range(MAX_MACRO):
        if device_input == i2 + 1:
            download_macro(i2 + 1)
        
        elif device_input == 0:
            print("" + Back.LIGHTGREEN_EX + "Thank for use :)")
            print(Style.RESET_ALL)
            exit()

        elif device_input == 99:
            print(Fore.LIGHTWHITE_EX + "[" + Fore.LIGHTGREEN_EX + "INFO" + Fore.LIGHTWHITE_EX + "] Show documentation on offical website ")
            print(Style.RESET_ALL)
            exit
        
        else:
            print(Fore.LIGHTWHITE_EX + "[" + Fore.LIGHTRED_EX + "ERROR" + Fore.LIGHTWHITE_EX + "] No macro found for : " + str(device_input))
