echo OFF
NET SESSION >nul 2>&1
IF %ERRORLEVEL% EQU 0 (
    ECHO Administrator confirmed.
	@echo on
	cd C:\Program Files\iSecuService\private
	icacls *.sys /deny everyone:f
	icacls *.exe /deny everyone:f
	echo Press any key to continue.
	pause >  nul
	shutdown -r -t 0
) ELSE (
   echo ######## ########  ########   #######  ########  
   echo ##       ##     ## ##     ## ##     ## ##     ## 
   echo ##       ##     ## ##     ## ##     ## ##     ## 
   echo ######   ########  ########  ##     ## ########  
   echo ##       ##   ##   ##   ##   ##     ## ##   ##   
   echo ##       ##    ##  ##    ##  ##     ## ##    ##  
   echo ######## ##     ## ##     ##  #######  ##     ## 
   echo.
   echo.
   echo ####### ERROR: No administrator privileges #########
   echo This program has to be run as administrator.
   echo ####################################################
   echo.
   echo Press any key to continue.
   PAUSE > nul
   EXIT /B 1
)
@echo ON