@echo off

cd "%~dp0"
"%LOCAL_PROGRAM_FILES%\SourceMonitor\SourceMonitor.exe" /s AddCheckpointAndExportMetrics.xml

cd "%~dp0"
..\xslconvert "Metrics.xml" MetricsToTeamCity.xslt Metrics.txt

type Metrics.txt
