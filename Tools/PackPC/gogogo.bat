@echo off

set DIR=%~dp0
cd %DIR%
set MAKE_RUN=%DIR%Cop.exe
rem call %MAKE_RUN% af sgly G:/of_projs/sgly/sgly_Data/Script/Lua/ G:/of_projs/sgly/sgly_Data/Script/Lua1/
call %MAKE_RUN% af sgly %DIR%../../Assets/Script/Lua/ G:/of_projs/sgly/gamePlan/pc_package/sgly_Data/Script/Lua/

xcopy "%DIR%../../Assets/Res/Lan" "G:/of_projs/sgly/gamePlan/pc_package/sgly_Data/Res/Lan" /E