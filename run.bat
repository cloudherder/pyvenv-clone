@echo off
:: You can modify Section 1 ,5.

:: 1.Set your script variables 
set MAIN_SCRIPT=mist-webui.py
set VENV_NAME=mist2

:: 2.Set pyvenv variables
set VENV_DIR=%~dp0venv
set VENV_SCRIPTS=%VENV_DIR%\Scripts
set PYTHON="%VENV_DIR%\Scripts\python.exe"

:: 3.Write to pyvenv.cfg
set pyvenv_cfg=%VENV_DIR%\pyvenv.cfg
for /F "delims=" %%i in ('%~dp0python3\python --version') do ( set pyver=%pyver% %%i )

echo home = %~dp0python3>%pyvenv_cfg%
echo version = %pyver:~8,-1%>>%pyvenv_cfg%
echo include-system-site-packages = false>>%pyvenv_cfg%

:: 4.Activate venv and Run your project
call "%VENV_SCRIPTS%\activate.bat"  %VENV_NAME%
cd %VENV_DIR%\..\src
%PYTHON%  %MAIN_SCRIPT%

:: 5.Add your Commands.e.g
if %errorlevel% equ 0 (
    rem timeout /nobreak /t 5
    start  http://127.0.0.1:7860/
)

:: 6.Deactivate venv
cd ..
call "%VENV_SCRIPTS%\deactivate.bat"
@echo on
pause
