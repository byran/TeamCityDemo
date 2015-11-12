@echo off

echo Running SourceMonitor analysis
cd "%~dp0\SourceMonitor"
call AddCheckpointAndOutputMetrics.bat

