@echo off

FOR /F "usebackq" %%i IN (`hostname`) DO SET STATION=%%i
del \\SCCMServer\C$\Collections\MissingSoftware\%STATION%.txt
del \\TeamShare$\MissingSoftware\%STATION%.txt

::*************************************Chrome
if exist "C:\Program Files (x86)\Google\Chrome\Application\Chrome.exe" goto NEXT0
	echo %1 Chrome Failed  >> \\SCCMServer\C$\Collections\MissingSoftware\%STATION%.txt
	echo %1 Chrome Failed  >> \\TeamShare$\MissingSoftware\%STATION%.txt

:NEXT0
::*************************************Office
if exist "C:\Program Files\Microsoft Office\Office14\excel.exe" goto NEXT1
if exist "C:\Program Files\Microsoft Office\Office15\excel.exe" goto NEXT1
	echo %1 Office Failed  >> \\SCCMServer\C$\Collections\MissingSoftware\%STATION%.txt
	echo %1 Office Failed  >> \\TeamShare$\MissingSoftware\%STATION%.txt

:NEXT1
::*************************************iTunes
if exist "C:\Program Files (x86)\iTunes\iTunes.exe" goto NEXT2
	echo %1 iTunes Failed  >> \\SCCMServer\C$\Collections\MissingSoftware\%STATION%.txt
	echo %1 iTunes Failed  >> \\TeamShare$\MissingSoftware\%STATION%.txt

:NEXT2
::*************************************Firefox
if exist "C:\Program Files (x86)\Mozilla Firefox\Firefox.exe" goto NEXT3
	echo %1 Firefox Failed  >> \\SCCMServer\C$\Collections\MissingSoftware\%STATION%.txt
	echo %1 Firefox Failed  >> \\TeamShare$\MissingSoftware\%STATION%.txt

:NEXT3
::*************************************Acrobat
if exist "C:\Program Files (x86)\Adobe\Acrobat 11.0\Acrobat\acrobat.exe" goto NEXT4
	echo %1 Acrobat Failed  >> \\SCCMServer\C$\Collections\MissingSoftware\%STATION%.txt
	echo %1 Acrobat Failed  >> \\TeamShare$\MissingSoftware\%STATION%.txt

:NEXT4
::*************************************Reader
if exist "C:\Program Files (x86)\Adobe\Reader 11.0\Reader\acrord32.exe" goto NEXT5
	echo %1 Reader Failed  >> \\SCCMServer\C$\Collections\MissingSoftware\%STATION%.txt
	echo %1 Reader Failed  >> \\TeamShare$\MissingSoftware\%STATION%.txt

:NEXT5
::*************************************Flash
if exist "C:\Program Files (x86)\Adobe\Flash Player" goto NEXT6
	echo %1 Flash Failed  >> \\SCCMServer\C$\Collections\MissingSoftware\%STATION%.txt
	echo %1 Flash Failed  >> \\TeamShare$\MissingSoftware\%STATION%.txt

:NEXT6
::*************************************Shockwave
if exist "C:\Windows\SysWOW64\Adobe\Shockwave 12\SwInit.exe" goto NEXT7
	echo %1 Shockwave Failed  >> \\SCCMServer\C$\Collections\MissingSoftware\%STATION%.txt
	echo %1 Shockwave Failed  >> \\TeamShare$\MissingSoftware\%STATION%.txt

:NEXT7
::*************************************Air
if exist "C:\Program Files (x86)\Adobe\Flash Player\AddIns\airappinstaller\airappinstaller.exe" goto NEXT8
	echo %1 Air Failed  >> \\SCCMServer\C$\Collections\MissingSoftware\%STATION%.txt
	echo %1 Air Failed  >> \\TeamShare$\MissingSoftware\%STATION%.txt

:NEXT8
::*************************************Java
if exist "C:\Program Files (x86)\Java\jre1.7.0_40\bin\java.exe" goto NEXT9
if exist "C:\Program Files (x86)\Java\jre1.8.0_40\bin\java.exe" goto NEXT9
	echo %1 Java Failed  >> \\SCCMServer\C$\Collections\MissingSoftware\%STATION%.txt
	echo %1 Java Failed  >> \\TeamShare$\MissingSoftware\%STATION%.txt

:NEXT9
::*************************************VLC
if exist "C:\Program Files (x86)\VideoLAN\VLC\vlc.exe" goto NEXT10
	echo %1 VLC Failed  >> \\SCCMServer\C$\Collections\MissingSoftware\%STATION%.txt
	echo %1 VLC Failed  >> \\TeamShare$\MissingSoftware\%STATION%.txt

:NEXT10
::*************************************ImgBurn
if exist "C:\Program Files (x86)\ImgBurn\ImgBurn.exe" goto NEXT11
	echo %1 ImgBurn Failed  >> \\SCCMServer\C$\Collections\MissingSoftware\%STATION%.txt
	echo %1 ImgBurn Failed  >> \\TeamShare$\MissingSoftware\%STATION%.txt

:NEXT11
::*************************************MovieMaker
if exist "C:\Program Files (x86)\Windows Live\Photo Gallery\moviemaker.exe" goto NEXT12
	echo %1 MovieMaker Failed  >> \\SCCMServer\C$\Collections\MissingSoftware\%STATION%.txt
	echo %1 MovieMaker Failed  >> \\TeamShare$\MissingSoftware\%STATION%.txt

:NEXT12
::*************************************Audacity
if exist "C:\Program Files (x86)\Audacity\audacity.exe" goto NEXT13
	echo %1 Audacity Failed  >> \\SCCMServer\C$\Collections\MissingSoftware\%STATION%.txt
	echo %1 Audacity Failed  >> \\TeamShare$\MissingSoftware\%STATION%.txt

:NEXT13
::*************************************Google Earth
if exist "C:\Program Files (x86)\Google\Google Earth\client\googleearth.exe" goto LEAVE
	echo %1 Google Earth Failed  >> \\SCCMServer\C$\Collections\MissingSoftware\%STATION%.txt
	echo %1 Google Earth Failed  >> \\TeamShare$\MissingSoftware\%STATION%.txt


:LEAVE

