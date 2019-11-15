@echo off
setlocal
if exist "%SQLANY12%\bin64\dbinit.exe" goto 64bit 
if exist "%SQLANY12%\bin32\dbinit.exe" goto 32bit 
echo SQL Anywhere install problem
goto end
:64bit
set __pref=%SQLANY12%\bin64
goto binset 
:32bit
set __pref=%SQLANY12%\bin32
:binset
set __new=demo.db
if [%1]==[] goto makenew
set __new=%1
if [%~x1]==[.db] goto makenew
set __new=%1.db
:makenew
if not exist %__new% goto init
"%__pref%\dberase" %__new%
if exist %__new% goto end
:init
"%__pref%\dbinit" %__new%
"%__pref%\dbspawn" -q -f "%__pref%\dbeng12" -n newsdb %__new%
cd /d "%SQLANY12%\Scripts" 
"%__pref%\dbisql" -c "UID=DBA;PWD=sql;SERVERNAME=newsdb" -q mkdemo.sql 
"%__pref%\dbstop" -c "UID=DBA;PWD=sql;SERVERNAME=newsdb" -q
:end
endlocal
