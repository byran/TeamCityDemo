@echo off

IF DEFINED ProgramFiles(x86) GOTO :64Bit

SET LOCAL_PROGRAM_FILES=%ProgramFiles%
GOTO :Continue

:64Bit
SET LOCAL_PROGRAM_FILES=%ProgramFiles(x86)%

:Continue

set DEVENV="%LOCAL_PROGRAM_FILES%\Microsoft Visual Studio 12.0\Common7\IDE\devenv.exe"

echo Building Solution
cd "%~dp0"
%DEVENV% TeamCityDemo.sln /Build Debug

echo Running SourceMonitor analysis
cd "%~dp0\BuildServer\SourceMonitor"
call AddCheckpointAndOutputMetrics.bat

echo Running CodeCoverage by tests
cd "%~dp0\BuildServer\OpenCppCoverage"
call ConvertCoverage.bat "%~dp0TeamCityDemo" "%~dp0Debug\TeamCityDemoTests.exe"
