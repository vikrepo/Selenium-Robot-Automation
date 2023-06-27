from time import sleep

import pyautogui

print(pyautogui.size())

while(True):
    sleep(2)
    print(pyautogui.position())