@echo off

echo Running SourceMonitor analysis
cd "%~dp0\BuildServer\SourceMonitor"
REM call AddCheckpointAndOutputMetrics.bat

echo Running CodeCoverage by tests
cd "%~dp0\BuildServer\OpenCppCoverage"
call ConvertCoverage.bat "%~dp0TeamCityDemo" "%~dp0Debug\TeamCityDemoTests.exe"
