@echo off

:: initialize Modules if not already done
if not defined MODULES_CMD (
   call "%~dp0..\init\cmd.cmd"
)

set OUTPUT=
:: execute each output line in cmd shell
for /f "tokens=*" %%I in ('call tclsh "%MODULES_CMD%" cmd %*') do %%I
