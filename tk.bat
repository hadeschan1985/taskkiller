@echo off&title WhatTokill&color 0a&set f=0
if "%1"=="" goto :do
goto :haveId
:do
cls&set nm=exit&echo Type nothing and Enter to exit&set /p nm=
if %nm%==exit goto :leave
set f=0
:noId
taskkill /f /t /im "%nm%" && goto :noId
if %f%==1 set f=0&goto :do
set f=1&goto :noId
:haveId
taskkill /f /t /im "%1" && goto :haveId
if %f%==1 set f=0&goto :leave
set f=1&goto :haveId
:leave
color 07&title cmd&cls