@echo off

Title Adventure game

:Adventuremenu

echo _____________________________________
echo Hello, welcome to the adventure game!
echo (Beta so please report issues if found)
echo Would you like to be a:
echo 1: Human (Press 1)
echo 2: Mage (Press 2)
echo 3: Elf (Press 3)
echo (To confirm your choice, press enter)
echo _____________________________________
set /p Characterchoice="Wat do you want to be? : "

If %Characterchoice%==1 GOTO :humanchoice
If %Characterchoice%==2 GOTO :Magechoice
If %Characterchoice%==3 GOTO :Elfchoice

cls

Echo _______________________
echo Try again!
echo _______________________

timeout 2

GOTO :Adventuremenu

cls

:humanchoice
echo _______________________
echo You chose human!
echo type back if you want to go back
::hier komen nog keuzes::
echo _______________________
set /p humanchoice="What do you want to do? : "

If %humanchoice%==back GOTO :Adventuremenu

:magechoice
echo _______________________
echo You chose mage!
echo type back if you want to go back
::hier komen nog keuzes::
echo _______________________
set /p magechoice="What do you want to do? : "

If %magechoice%==back GOTO :Adventuremenu


:elfchoice
echo _______________________
echo You chose elf!
echo type back if you want to go back
::hier komen nog keuzes::
echo _______________________
set /p elfchoice="What do you want to do? : "

If %elfchoice%==back GOTO :Adventuremenu
