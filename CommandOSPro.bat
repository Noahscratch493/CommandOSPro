@echo off
color 0a
title CommandOS Pro ver=1.0

echo Finding Kernel.........
echo Kernel Found! Booting CommandOS Pro
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
echo 8. Exit

set /p input=
if "%input%" == "1" goto info
if "%input%" == "2" goto calc 
if "%input%" == "3" goto clock
if "%input%" == "4" goto calendar
if "%input%" == "5" goto songs
if "%input%" == "6" goto antivirus
if "%input%" == "7" goto game
if "%input%" == "8" goto end

goto menu

:info
cls
echo.=======================
echo      CommandOS Pro
echo.=======================
echo      SYSTEM INFO  
echo.
echo      VERSION = 1.0
echo.     
echo      RAM = 8GB
echo.
echo      PROCESSOR = CommandCore Pro
echo.
echo      STORAGE = 1TB HDD     
echo.   
echo      OPERATING SYSTEM = CommandOS Pro
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
start https://github.com/Noahscratch493/CommandOS/releases/

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
echo Sorry, this feature is not available in CommandOS Pro.
echo.
pause
goto menu

:antivirus
cls
echo ANTIVIRUS
echo.
echo Scanning system for viruses...
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

:end
cls
echo CommandOS Pro is Shutting Down...
pause
