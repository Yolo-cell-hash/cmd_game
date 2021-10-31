@echo OFF
color 02
set /a num1=%random% %%101
set /a num2=%random% %%101
set /a num3=%random% %%101
set /a num4=%random% %%101
set /a num5=%random% %%101

set /a LSCORE= 0
set /a WSCORE= 0
SET /A LSCOR="%LSCORE% - 10"
SET /A WSCOR="%WSCORE% + 200"


:startgame
echo Hey! Welcome to the game!
echo You have 5 lives to get a random 80+ number
echo Do you want to start? (y/n?)
set /p confirmation=
cls
if %confirmation% == y goto menu
if %confirmation% == n goto exit

:menu
echo 1) Start
echo 2) How to play
echo 3) Exit
set /p number=
if %number% == 1 goto try1
if %number% == 2 goto help
if %number% == 3 goto exit

:try1
cls
echo Attempt 1:
echo Your Random Number is %num1%

if %num1% LSS 80 (
echo You Lose!
ECHO Your Score is: %LSCOR%
timeout 6
goto try2
)
if %num1% GEQ 80 ( echo WINNER
ECHO Your Score is: %WSCOR%
timeout 6
cls
goto menu
)

:try2
echo Attempt 2:
echo Your Random Number is %num2%
if %num2% LSS 80 (
echo You Lose!
ECHO Your Score is: %LSCOR%
timeout 6
goto try3
)
if %num2% GEQ 80 (
echo WINNER
ECHO Your Score is: %WSCOR%
timeout 6
cls
goto menu
)

:try3
echo Attempt 3:
echo Your Random Number is %num3%
if %num3% LSS 80 (
echo You Lose!
ECHO Your Score is: %LSCOR%
timeout 6
goto try4
)
if %num3% GEQ 80 (
echo WINNER
ECHO Your Score is: %WSCOR%
timeout 6
cls
goto menu
)

:try4
echo Attempt 4:
echo Your Random Number is %num4%
if %num4% LSS 80 (
echo You Lose!
ECHO Your Score is: %LSCOR%
timeout 6
goto try5
)
if %num4% GEQ 80 ( echo WINNER
ECHO Your Score is: %WSCOR%
timeout 6
cls
goto menu
)

:try5
echo Attempt 5:
echo Your Random Number is %num5%
if %num5% LSS 80 (
echo GAME OVER!
ECHO Your Score is: %LSCOR%
timeout 6
cls
goto menu
)
if %num5% GEQ 80 ( echo WINNER
ECHO Your Score is: %WSCOR%
timeout 6
cls
goto menu
)







:help
echo This is a Random Luck Tester Game
echo Each player gets 5 attempts
echo If you get an 80+ number, you win!
echo If you run out of chances, you lose!
timeout 25
cls
goto menu

:exit
echo Thanks for being here!
timeout 5
exit
