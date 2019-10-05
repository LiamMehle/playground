import time
import win32com.client as comclt
while(1):
    pressButton()
    time.sleep(1)

def pressButton():
    wsh.SendKeys("a")
