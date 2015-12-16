@echo off
set ESP_LUA_PYTHON_DIR=C:\Proggy\ESP8266\uploader

if .%1.==.. goto nosrcdir

cd %1
@for %%i in (*) do echo python %ESP_LUA_PYTHON_DIR%\uploader1.py %%i
goto exit

:nosrcdir
echo Error: No src directory specified. Run:
echo uploader.bat [directory with sources to upload to NodeMCU ESP module]

:exit