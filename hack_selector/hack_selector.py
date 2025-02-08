from colorama import Fore,Style
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


with open("macro_data.json","r+") as json_file:
    json_data = json.load(json_file)

    for i in range(json_data["macro_num"]):
        print_info(i + 1)

print(Style.RESET_ALL)