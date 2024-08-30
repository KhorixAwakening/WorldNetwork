@echo off
title Compile the State Source Code

echo Compiling...

:run_command
lime test neko -debug

choice /c YN /m "Retry?"

if errorlevel 2 (
    exit
) else (
    goto run_command
)
