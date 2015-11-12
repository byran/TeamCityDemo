@echo off

IF DEFINED ProgramFiles(x86) GOTO :64Bit

SET LOCAL_PROGRAM_FILES=%ProgramFiles%
GOTO :Continue

:64Bit
SET LOCAL_PROGRAM_FILES=%ProgramFiles(x86)%

:Continue


cd "%~dp0"
"%LOCAL_PROGRAM_FILES%\SourceMonitor\SourceMonitor.exe" /s AddCheckpointAndExportMetrics.xml

cd "%~dp0"
..\xslconvert "Metrics.xml" MetricsToTeamCity.xslt Metrics.txt

type Metrics.txt
