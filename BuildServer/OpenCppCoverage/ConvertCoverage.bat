@echo off

set CURRENT_DIRECTORY="%~dp0"
set SOURCES=%1
set APP=%2

cd "%CURRENT_DIRECTORY%"
del Coverage.xml
opencppcoverage --sources %SOURCES% --export_type=cobertura:Coverage.xml -- %APP%

cd "%CURRENT_DIRECTORY%"
..\xslconvert "Coverage.xml" CoverageToTeamCity.xslt Coverage.txt

type Coverage.txt
