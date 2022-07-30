@echo off
cd "C:\Program Files"
mkdir PlanespottersFriend
cd PlanespottersFriend
setx path "%PATH%;"C:\Program Files\PlanespottersFriend"
title Planespotters' Friend Installation
echo Planespotters' Friend v2.0
timeout /t 1 /nobreak > NUL
echo (C) POLARIS183 2022
timeout /t 1 /nobreak > NUL
echo This program will install Planespotters' Friend on your computer.
echo To abort installation at any time, just press CTRL+C.
set /p FILENAME="What would you like to call the program? Don't include the file extension. (eg. flight)"
curl https://raw.githubusercontent.com/POLARIS183/plane/main/src/v2.0.cmd > %FILENAME%.cmd
echo Congratulations! You've successfully managed to install Planespotters' Friend on your PC. Well done!
echo If the program isn't working, add C:\Program Files\PlanespottersFriend to your path.
echo Now let's get ready to plane-spot!
echo Press any key to exit
pause > NUL
