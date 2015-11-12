# Metrics #

## SourceMonitor ##

### Setup ###
Add a Source Monitor project file (.smproj) called Metrics.smproj to the directory

### TeamCity Output ###
Run the AddCheckpointAndOutputMetrics.bat script. This will create a new checkpoint and
output the metrics in a format that can be easily parsed by TeamCity

## OpenCppCoverage ##

Run the CovertCoverate.bat script, the first argument should be the absolute path of the
source files, the second argument should be the absolute path to the executable. The
remaining arguments will be passed to the executable.
