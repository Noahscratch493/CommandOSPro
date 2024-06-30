@echo off
color 0a
title CommandOS Pro Max ver=1.0

echo Finding Kernel.........
echo Kernel Found! Booting CommandOS Pro Max
pause

:main
cls
echo What is your name?
set /p name=
echo %name% > username.txt
cls
echo HELLO! %name%
echo.
pause

:menu
cls
echo What Would You Like To Do? Type the number.
echo.
echo 1. System Info 
echo 2. Calculator 
echo 3. Clock 
echo 4. Calendar 
echo 5. Songs 
echo 6. Antivirus
echo 7. Text-based Game
echo 8. Notes
echo 9. Weather
echo 10. Exit

set /p input=
if "%input%" == "1" goto info
if "%input%" == "2" goto calc 
if "%input%" == "3" goto clock
if "%input%" == "4" goto calendar
if "%input%" == "5" goto songs
if "%input%" == "6" goto antivirus
if "%input%" == "7" goto game
if "%input%" == "8" goto notes
if "%input%" == "9" goto weather
if "%input%" == "10" goto end

goto menu

:info
cls
echo.=======================
echo      CommandOS Pro Max
echo.=======================
echo      SYSTEM INFO  
echo.
echo      VERSION = 1.0
echo.     
echo      RAM = 16GB
echo.
echo      PROCESSOR = CommandCore Max
echo.
echo      STORAGE = 2TB SSD     
echo.   
echo      OPERATING SYSTEM = CommandOS Pro Max
echo.  
echo      Kernel ver = 1.0
echo.  
echo      Build = 1
echo.
echo.========================
echo      Copyright (c) CommandOS Inc.
echo.========================
echo.
echo Wanna check for update?

echo  1. Check for update 
echo  2. Menu

set /p check= 

if "%check%" == "1" goto update
if "%check%" == "2" goto menu

goto info

:update 
cls
echo In the Browser Window, Download a Release!
start https://github.com/Noahscratch493/CommandOSPro/blob/main/CommandOSProMax.bat

pause
goto menu

:calc
cls
echo CALCULATOR
echo.
echo 1. Addition
echo 2. Subtraction
echo 3. Multiplication
echo 4. Division
echo 5. Menu
set /p calcinput=Choose operation: 
if "%calcinput%" == "1" goto add
if "%calcinput%" == "2" goto subtract
if "%calcinput%" == "3" goto multiply
if "%calcinput%" == "4" goto divide
if "%calcinput%" == "5" goto menu
goto calc

:add
cls
echo ADDITION
set /p num1=Enter first number: 
set /p num2=Enter second number: 
set /a result=%num1% + %num2%
echo Result: %result%
pause
goto calc

:subtract
cls
echo SUBTRACTION
set /p num1=Enter first number: 
set /p num2=Enter second number: 
set /a result=%num1% - %num2%
echo Result: %result%
pause
goto calc

:multiply
cls
echo MULTIPLICATION
set /p num1=Enter first number: 
set /p num2=Enter second number: 
set /a result=%num1% * %num2%
echo Result: %result%
pause
goto calc

:divide
cls
echo DIVISION
set /p num1=Enter first number: 
set /p num2=Enter second number: 
set /a result=%num1% / %num2%
echo Result: %result%
pause
goto calc

:clock
cls
echo CLOCK
echo.
echo Current time: 
time /t
echo.
pause
goto menu

:calendar
cls
echo CALENDAR
echo.
echo Current date: 
date /t
echo.
pause
goto menu

:songs
cls
echo SONGS
echo.
echo Sorry, this feature is not available in CommandOS Pro Max.
echo.
pause
goto menu

:antivirus
cls
echo ANTIVIRUS
echo.
echo Scanning system for viruses...
ping localhost -n 3 >nul
echo Scanning file 1/5...
ping localhost -n 2 >nul
echo Scanning file 2/5...
ping localhost -n 2 >nul
echo Scanning file 3/5...
ping localhost -n 2 >nul
echo Scanning file 4/5...
ping localhost -n 2 >nul
echo Scanning file 5/5...
ping localhost -n 2 >nul
echo.
echo No viruses found. System clean.
echo.
pause
goto menu

:game
cls
echo Welcome to the Guessing Game!
set /a number=%random% %% 10 + 1
set /p guess=Guess a number between 1 and 10: 
if "%guess%" == "%number%" (
    echo Correct! You guessed the right number.
) else (
    echo Wrong! The correct number was %number%.
)
pause
goto menu

:notes
cls
echo NOTES
echo.
echo 1. View Notes
echo 2. Add Note
echo 3. Menu
set /p noteinput=Choose an option: 
if "%noteinput%" == "1" goto viewnotes
if "%noteinput%" == "2" goto addnote
if "%noteinput%" == "3" goto menu
goto notes

:viewnotes
cls
if exist notes.txt (
    type notes.txt
) else (
    echo No notes available.
)
pause
goto notes

:addnote
cls
set /p note=Enter your note: 
echo %note% >> notes.txt
echo Note saved.
pause
goto notes

:weather
cls
echo WEATHER
echo.
echo Sorry, this feature is not available in CommandOS Pro Max.
echo.
pause
goto menu

:end
cls
echo CommandOS Pro Max is Shutting Down...
pause
