@echo off
title Fun minigames

set /A cookies=0

:startmenu
timeout /NOBREAK 1
echo _______________________________________________
if %cookies%==1 echo you ate %cookies% cookie :D Yummy!
if %cookies%==2 echo you ate %cookies% cookies :D A second one? Well nice
if %cookies%==3 echo you ate %cookies% cookies :D Not hungry anymore right?
if %cookies%==4 echo you ate %cookies% cookies :D Getting full?
if %cookies%==5 echo you ate %cookies% cookies :D Dont eat too much though...
if %cookies%==6 echo you ate %cookies% cookies :D Chill
if %cookies%==7 echo you ate %cookies% cookies :D Bro no
if %cookies%==8 echo you ate %cookies% cookies :D You'll get fat
if %cookies%==9 echo you ate %cookies% cookies :D I'm warning you
if %cookies%==10 start cmd.exe /k %~dp0\full.bat
echo ________________________________________________
timeout /NOBREAK 3
echo ________________________________________________________
echo Welcome to Jonahgus's minigames
echo have fun!
echo ________________________________________________________
timeout /NOBREAK 1
echo ________________________________________________________
echo press 1 for type the number
echo press 2 for an interactive adventure game (Will not work properly since it is not finished)
echo press 3 for a free cookie :D
echo (all interactions require enter to confirm)
echo ________________________________________________________
timeout /NOBREAK 1
set /p startinput="1, 2 or 3: "
echo ________________________________________________________
if %startinput%==1 GOTO :minigame1
if %startinput%==2 GOTO :minigame2
if %startinput%==3 GOTO :cookie

:cookie
set /A cookies=%cookies%+1
echo ________________________
echo yummy
echo here's a free cookie :D
echo ________________________

GOTO :startmenu

:minigame1


set /a wins=0
:start
set /a points=0
if %wins%==10 GOTO :supercool
:secretstart
echo Hi!
echo You have %wins% wins so far
echo Do you want to play easy mode or hard mode?
echo 1 = Easy mode
echo 2 = Medium mode
echo 3 = Hard mode
echo 4 To go to the home menu
set /p input="1, 2 or 3: "
if %input%==1 GOTO :easy
if %input%==2 GOTO :medium
if %input%==3 GOTO :hard
if %input%==4 GOTO :startmenu
if %input%==69 GOTO :secret
if %input%==10 GOTO :test

:yeet1
set /a points=%points%-1
echo ________________________________________________________
echo Thats the wrong answer :(
echo You now have %points% points
echo ________________________________________________________
if %points%==-5 GOTO :Loser
if %points%==99 GOTO :coolguy
if %points%==101 GOTO :coolguy
GOTO :hard

:yeet1easy
set /a points=%points%-1
echo ________________________________________________________
echo Thats the wrong answer :(
echo You now have %points% points
echo ________________________________________________________
if %points%==-5 GOTO :Loser
if %points%==99 GOTO :coolguy
if %points%==101 GOTO :coolguy
GOTO :easy

:yeet1medium
set /a points=%points%-1
echo ________________________________________________________
echo Thats the wrong answer :(
echo You now have %points% points
echo ________________________________________________________
if %points%==-5 GOTO :Loser
if %points%==99 GOTO :coolguy
if %points%==101 GOTO :coolguy
GOTO :medium

:yeet
set /a points=%points%+1
echo ________________________________
echo Correct!
echo You have %points% points!
echo ________________________________
if %points%==10 GOTO :lol
if %points%==99 GOTO :coolguy
if %points%==101 GOTO :coolguy
GOTO :hard

:yeetmedium
set /a points=%points%+1
echo ________________________________
echo Correct!
echo You have %points% points!
echo ________________________________
if %points%==10 GOTO :lol
if %points%==99 GOTO :coolguy
if %points%==101 GOTO :coolguy
GOTO :medium

:yeeteasy
set /a points=%points%+1
echo ________________________________
echo Correct!
echo You have %points% points!
echo ________________________________
if %points%==10 GOTO :lol
if %points%==99 GOTO :coolguy
if %points%==101 GOTO :coolguy
GOTO :easy


:hard
set /A ok=%RANDOM%
set /p Type="Type the number %ok%: "
if %ok%==%Type% GOTO :yeet

GOTO :yeet1

:medium
set /A ok3=%RANDOM%*100/32768
set /p Type3="Type the number %ok3%: "
if %ok3%==%Type3% GOTO :yeetmedium

GOTO :yeet1medium

:easy
set /A ok2=%RANDOM%*10/32768
set /p Type2="Type the number %ok2%: "
if %ok2%==%Type2% GOTO :yeeteasy

GOTO :yeet1easy

:lol
echo _____________________________
echo You win!
echo You get 1 win!
set /a wins=%wins%+1
echo _____________________________
GOTO :start

:loser
echo _____________________________
echo You lost!
echo Try again.
echo _____________________________
GOTO :start

:secret
set /a points=%points%+100
echo ________________________________________________________________
echo Bro so cool 
echo you just got 100 free points bro
echo nice
echo anything you choose now you will instantly win :)
echo _________________________________________________________________
GOTO :secretstart 

:cool
echo bro ur so hot
timeout /NOBREAK 3
exit

:coolguy
echo Secret ending!
timeout /NOBREAK 3
echo Now go get sum bitches man
timeout /NOBREAK 3
exit


:test
set /a points=%points%+10
echo k
set /a wins=%wins%+1
GOTO :start


:supercool
echo ________________________
echo You completed the game!
echo play again ?
echo y for yes n for no, h for home menu
echo ________________________
set /p lool="y, n or h: "
echo _______________________
if %lool%==y GOTO :opnieuw
if %lool%==n exit
if %lool%==h GOTO :startmenu



:opnieuw
start cmd /k %~dp0\nolife.bat
