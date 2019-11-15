@setlocal
@echo off
rem %SQLANY12%\Bin32 must be in the PATH so that jsyblib610.dll and dbjdbc12.dll can be found
SET SABIN=%SQLANY12%

set PATH=%SABIN%\bin32;%SABIN%\bin64;%SABIN%\sun\jre160_x86\bin;%SABIN%\sun\jre160_x64\bin;%PATH%
set CLASSPATH=%SABIN%\java\migrator.jar;%SABIN%\java\jsyblib610.jar;%SABIN%\java\sajdbc.jar
set OTHERSWITCHES=-ea -Dsun.java2d.noddraw=true -Dsun.java2d.d3d=false -Duser.home=.

java %OTHERSWITCHES% -classpath "%CLASSPATH%" com.ianywhere.serverMonitor.migrator.MonitorMigrator %1 %2 %3 %4 %5
@echo on
@endlocal
