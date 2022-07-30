@echo off
echo This is Planespotter's Friend, a command-line tool to turn FlightRadar24 data into CSV spreadsheets.
echo © POLARIS183 2022.
echo Remember: to abort the program at any time, hit CTRL+C.
pause

:code
echo Enter your hexadecimal FlightRadar ID.
echo You can work out where this is on the README file included with installation.
set /p FLIGHT=""

:idchoice
set /P c=You selected %FLIGHT% Are you sure you want to continue[y/N]? 
if /I "%c%" EQU "Y" goto :jsoncurl
if /I "%c%" EQU "N" goto :code
goto :idchoice

:jsoncurl
curl https://api.flightradar24.com/common/v1/flight-playback.json?flightId=%FLIGHT%
echo.
goto datachoice

:datachoice
echo This is the data we got for your ID.
set /P d=Does it look right? [y/N]?
if /I "%d%" EQU "Y" goto :csvchoice
if /I "%d%" EQU "N" goto :code
goto datachoice

:csvchoice
set /P e=Would you like to save this data as a CSV? [y/N]? 
if /I "%e%" EQU "Y" goto :csvlocation
if /I "%e%" EQU "N" goto :jsonchoice
goto csvchoice

:jsonchoice
echo Would you like to save this data as a JSON?
set /P f=Selecting no will dump the JSON and exit. [y/N]? 
if /I "%f%" EQU "Y" goto :jsonlocation
if /I "%f%" EQU "N" goto :jsoncurl2
goto jsonchoice

:jsoncurl2
curl https://api.flightradar24.com/common/v1/flight-playback.json?flightId=%FLIGHT%
goto exit

:csvlocation
echo Where would you like to save your file?
echo Include the filename and CSV extension.
set /p LOCATION=""
curl https://data.page/?u=https://api.flightradar24.com/common/v1/flight-playback.json?flightId=%FLIGHT% > %LOCATION%
goto exit

:jsonlocation
echo Where would you like to save your file?
echo Include the filename and JSON extension.
set /p LOCATION=""
curl https://api.flightradar24.com/common/v1/flight-playback.json?flightId=%FLIGHT% > %LOCATION%
goto exit

:exit
echo You're all set, and your file should be downloaded.
set /P g=Would you like to download another dataset? [y/N]? 
if /I "%g%" EQU "Y" goto :code
if /I "%g%" EQU "N" goto :finalexit
goto exit

:finalexit
echo See you later, and I hope you enjoyed the program!
echo Press any key to exit
pause > NUL
