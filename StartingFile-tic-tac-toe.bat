::Head Declarations
@echo off
setlocal enabledelayedexpansion
color A

set /a p1Wins=0
set /a p2Wins=0



:variables
::Variables to hold spaces
set one=-
set two=-
set three=-
set four=-
set five=-
set six=-
set seven=-
set eight=-
set nine=-

set /a turn=0
set /a numberOfTurns=0



::Draw board to screen
:loop
cls

if %p1Wins% LSS 2 (
	if %p1Wins% GTR 0 (
		echo X player has !p1Wins! win
	) else (
		echo X player has !p1Wins! wins
	)
) else (
	echo X player has !p1Wins! wins
)

if %p2Wins% LSS 2 (
	if !p2Wins! GTR 0 (
		echo O player has !p2Wins! win
	) else (
		echo O player has !p2Wins! wins
	)
) else (
	echo O player has !p2Wins! wins
)
echo.


::turn
if !turn!==0 (
	echo It is the X player's turn
) else (
	echo It is the O player's turn
)
echo.


::board
echo 	!one! ^| !two! ^| !three!
echo 	---------
echo 	!four! ^| !five! ^| !six!
echo 	---------
echo 	!seven! ^| !eight! ^| !nine!
echo.


::--------------------------
::determine win
::--------------------------

::rows








::columns









::diagonals







::determine tie game








::-------------------------------------
::take turn
::-------------------------------------


::set the turn symbol to either x or o







::Accept user input








::Process user input











::change variable value to reflect input from player








::change whose turn it is










::use prompt to loop
:prompt
set userPrompt=y
echo would you like to play again? [y/n]
set /p userPrompt=:

if "!userPrompt!" EQU "y" (
	goto variable
) else if "!userPrompt!" EQU "Y" (
	goto variable
) else if "!userPrompt!" EQU "n" (
	echo goodbye
) else if "!userPrompt!" EQU "N" (
	echo goodbye
) else (
	echo invalid option!
	goto prompt
)
pause
endlocal
exit 0



::helpScreen
:helpScreen
cls
echo The standard rules of tic-tac-toe apply
echo.
echo To choose a space you need to hit the corresponding
echo number on the number pad. For example 7 would represent
echo the space in the top left of the board
echo.
echo For reference this is what each number corresponds to...
echo.
echo		7 ^| 8 ^| 9
echo 	---------
echo		4 ^| 5 ^| 6
echo 	---------
echo		1 ^| 2 ^| 3
echo.
echo When prompted to play a new game, you can just hit enter
echo instead of entering y.
echo.
echo you may also type "exit" to quit the game at anytime.
pause
goto loop
