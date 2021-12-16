@echo off
title DRAGON KILL -Made by Quarkii-
color a
:MainMenu
cls
echo.
echo DRAGON KILL
echo --------------
echo CHOOSE
echo.
echo [1] Start the game
echo.
echo [2] Change the color
echo.
echo [3] Leave
echo.
echo.
set /p menu= Choose:
if /i %menu%== 1 goto sets
if /i %menu%== 2 goto colorchoose1
if /i %menu%== 3 exit
)else goto menu
:sets
cls
set /a money=1000
set /a health=500
set /a potions=0
set /a damage=2
set /a dd=5
set /a dh=25
set /a moneygain=50
set /a levels=0
set /a new=%dh%+5
goto start
:start
cls
echo.
echo ______________________________
echo Gold:%money% /
echo Health:%health% /
echo Healpotion:%potions% /
echo __________________________/
echo.
echo.
echo Choose!
echo.
echo [1] Fight the dragon
echo.
echo [2] Go to the shop
echo.
echo [3] Drink a healpotion
echo.
echo [4] Go to the titlescreen
echo.
echo.
set /p menu=Choose:
if /i %menu%== 1 goto fight
cls
echo.
pause
if /i %menu%== 2 goto store
if /i %menu%== 3 goto MainMenu
if /i %menu%== 4 goto nextx
:fight
cls
echo -----------------------
echo Your health: %health%
echo Dragons health: %new%
echo -----------------------
echo.
echo You encountered the Dragon
echo.
echo.
pause
cls
echo Press Enter to attack the dragon!
set /p hit=
set /a new=%new%-%damage%
if %new% LSS 1 (
goto defeat
)
cls
echo --------------------
echo Deine Leben:%health%
echo Leben vom Drachen:%new%
echo --------------------
echo.
echo You damaged the dragon for %damage%
echo.
echo.
pause
cls
echo The dragon attacked you
set /a health=%health%-%dd%
if %health% LSS 1 (
goto defeated
)
pause
cls
goto fight

:defeat
cls
set /a dh=%dh%+20
set /a new=%dh%
set /a money=%money%+50
set /a levels=%levels%+1
echo.
echo You defeated the Dragon and earned
echo Well played!
echo.
echo.
pause
goto start
:defeated
cls
echo DIED
echo RIP
echo You defeated the dragon %levels% times
pause
goto menu
:store
cls
echo Gold:%money%
echo Welcome to the Shop!
echo.
echo Choose!
echo.
echo [1] Upgrade the sword 700 Gold
echo [2] Buy a healpotion 30 Gold
echo.
echo [3] Leave the shop
echo.
echo.
set /p menu=Choose:
if %menu%==1 goto buysword
if %menu%==2 goto buyheal
if %menu%==3 goto start

:buysword
cls
set /a money=%money%-700
if %money% LSS 0 (
echo.
echo You cant buy that!
echo.
set /a money=%money%+700
pause
goto store
)else (
set /a damage=%damage%+4
echo.
echo You improved your sword! (:
echo.
echo.
echo ..............................
echo ............+*+...............
echo ..........:******-............
echo ........-***+::+***...........
echo .........-+::::::+............
echo ........-***::::***...........
echo ..........+::::::*-...........
echo ........-***::::+**...........
echo .........-*:::::+*+...........
echo .........:*+::+::*+...........
echo .........-**:++:+**-..........
echo .........-*+:::::*:...........
echo .........:=*++++***:..........
echo ..........:+:::::+:...........
echo .........+==+++++*=+..........
echo ..........-+::+::++...........
echo .........-==+++++*=:..........
echo ...-=-.=+.+#++++:=@::@#-=@*...
echo ..=@@##@@##@@#*=@@@==##=#@@@=.
echo .:@@@##@@#=###=#@#==#@@#@@@*..
echo ...:@+.*@@@#@@#@@@#@@@:..+....
echo .........*:.-@###-.-:.........
echo ...........-@W@WWW:...........
echo .............#@@@-............
echo ...........-@W@@WW+...........
echo ............-#@@@#-...........
echo ...........#@@@#@@@#-.........
echo ..........-@@@##@@@=..........
echo ............-@@@@#-...........
echo ..............-=-.............
echo.
pause
goto store
)
:buyheal
cls
set /a money=%money%-30
if %money% LSS 0 (
echo You cant buy that!
set /a money=%money%+30
pause
goto store
)else (
set /a potions=%potions%+1
echo You bought a healpotion! (:
echo.
echo ......................................
echo ......................................
echo ............-****========-............
echo ............-****========-............
echo ........-----::::::::::::----.........
echo ........-----:::::::::###----.........
echo ........-----****====####::::-........
echo ........-----****====####::::-........
echo .............:+::----++++-............
echo .............#::-...-:::#-............
echo .............#::-...-:::#-............
echo .............#::-...-:::#-............
echo .........--##----....---##---.........
echo ........-##--............##::-........
echo ........:+++:...-::::+++++++*:---.....
echo .....---*====----=#######====+:::-....
echo ....-:::+****::::=#######====*+++:---.
echo ----+###+---:############====####*:::-
echo ----+###+---:############====####*:::-
echo -:::+###+---:############====####*:::-
echo -:::+###+---:############====####*:::-
echo -:::+###=====############+:::=###*:::-
echo -:::+###=====############+:::=###*:::-
echo -:::+###=====############+:::=###*:::-
echo -:::+###=====############+:::=###*:::-
echo -:::::::=####=======*::::=###+:::::::-
echo -:::::::=####=======*::::=###+:::::::-
echo ........-::::::::::::::::::::-........
echo ........-::::::::::::::::::::-........
echo ......................................
pause
goto store
)
:nextx
cls
if %potions%==0 (
echo Sorry, you have no more healpotion!
pause
goto start
)else (
set /a health=%health%+50
set /a potions=%potions%-1
echo.
echo You drunk a healpotion
echo.
echo.
echo ......................................
echo ......................................
echo ............-****========-............
echo ............-****========-............
echo ........-----::::::::::::----.........
echo ........-----:::::::::###----.........
echo ........-----****====####::::-........
echo ........-----****====####::::-........
echo .............:+::----++++-............
echo .............#::-...-:::#-............
echo .............#::-...-:::#-............
echo .............#::-...-:::#-............
echo .........--##----....---##---.........
echo ........-##--............##::-........
echo ........:+++:...-::::+++++++*:---.....
echo .....---*====----=#######====+:::-....
echo ....-:::+****::::=#######====*+++:---.
echo ----+###+---:############====####*:::-
echo ----+###+---:############====####*:::-
echo -:::+###+---:############====####*:::-
echo -:::+###+---:############====####*:::-
echo -:::+###=====############+:::=###*:::-
echo -:::+###=====############+:::=###*:::-
echo -:::+###=====############+:::=###*:::-
echo -:::+###=====############+:::=###*:::-
echo -:::::::=####=======*::::=###+:::::::-
echo -:::::::=####=======*::::=###+:::::::-
echo ........-::::::::::::::::::::-........
echo ........-::::::::::::::::::::-........
echo ......................................
pause
goto start
)
:colorchoose1
cls
echo.
echo _______________________________
echo Choose your favorite color (: /
echo _____________________________/
echo.
echo Colors:
echo ------------
echo Green [G]
echo Dark green [DG]
echo Turquoise [T]
echo Blue [B]
echo Red [R]
echo Dark red [DR]
echo Purple [P]
echo Grey [Gr]
echo Yellow [Y]
echo White [W]
echo.
echo Finnished [F]
echo.
set /p auswahl= Auswahl:
if /i %auswahl%==G goto GR
if /i %auswahl%==DG goto DG
if /i %auswahl%==T goto TU
if /i %auswahl%==B goto BL
if /i %auswahl%==R goto RO
if /i %auswahl%==DR goto DR
if /i %auswahl%==P goto LI
if /i %auswahl%==GR goto GRA
if /i %auswahl%==Y goto GE
if /i %auswahl%==W goto WE
if /i %auswahl%==F goto MainMenu
:GR
color a
goto colorchoose1
:DG
color 2
goto colorchoose1
:TU
color 3
goto colorchoose1
:BL
color 9
goto colorchoose1
:RO
color c
goto colorchoose1
:DR
color 4
goto colorchoose1
:LI
color 5
goto colorchoose1
:GRA
color 8
goto colorchoose1
:GE
color e
goto colorchoose1
:WE
color f
goto colorchoose1
