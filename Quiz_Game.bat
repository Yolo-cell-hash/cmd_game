@echo off
color 0b
SET /A SCORE= 0
SET /A SCOR="%SCORE% + 10"
SET /A SCOR2="%SCOR% + 10"

:firstSection
cls
echo -----Welcome to the QUIZ game-----
echo:
echo 1)Start
echo 2)How to Play
echo 3)Exit
echo:
set /p input=
if %input% == 1 goto Start
if %input% == 2 goto HowtoPlay
if %input% == 3 goto exit

:Start
cls
echo Please enter your name ...
set /p name=
echo:
echo Hello %name%! Welcome to the quiz game!
echo:
echo Are you ready to start the game? (y/n)
set /p conf=
if %conf% == y goto LevelOne
if %conf% == n goto firstSection
goto Start


:LevelOne
cls
echo This is level 1
echo:
echo Question one :
echo 77+33= ?
echo:
echo 1)100
echo 2)-100
echo 3)90
echo 4)110
set /p choice=
if %choice% == 1 goto WrongAns
if %choice% == 2 goto WrongAns
if %choice% == 3 goto WrongAns
if %choice% == 4 goto RightAns

:WrongAns
echo:
echo Hey! That wasn't right enough!
echo:
echo You are being directed back to Level 1!
timeout 6
goto LevelOne

:RightAns
echo:
echo Congratulations! You have cleared Level 1!
ECHO Your Score is: %SCOR%
echo:
echo You'll now be taken to level 2
timeout 6
goto LEVEL2

:LEVEL2
cls
echo This is level 2
echo:
echo Question one :
echo 66+44= ?
echo:
echo 1)100
echo 2)-100
echo 3)90
echo 4)110
set /p choice=
if %choice% == 1 goto WrongAns
if %choice% == 2 goto WrongAns
if %choice% == 3 goto WrongAns
if %choice% == 4 goto RightAns2

:RightAns2
echo:
echo Congratulations! You have cleared Level 2!
ECHO Your Score is: %SCOR2%
echo:
echo You have defeated the game! Congratulations!
timeout 6
goto firstSection

:HowtoPlay
echo:
echo Just press the nummber corresponding to the option and hit enter!
echo:
timeout 12
goto firstSection

:exit
echo See you soon!
timeout 12
exit
