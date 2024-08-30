@echo off

title State Template for Psych Engine GitHub Update

echo Adding all files to the stage...

git add .

set /p commitMessage="Commit name: "

echo Commiting... (%commitMessage%)

git commit -m "%commitMessage%"

echo Pushing to origin main...

git push origin main

echo Everything up to date!

pause