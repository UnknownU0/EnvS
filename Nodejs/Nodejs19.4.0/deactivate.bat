@echo off
echo #########################################
echo ## [96m%ActivatingEnv%%Nodejs_Version%[0m Virtual Env BY Unknown ##
echo #########################################
echo    [101mDEACTIVATE[0m           ## CMD Edition ##
echo                         #################
set "PATH=%OLD_PATH%"
set "PROMPT=%OLD_PROMPT%"
if DEFINED OLD_Nodejs_Version_00 (
set "Nodejs_Version=%OLD_Nodejs_Version_00%"
set "OLD_Nodejs_Version_00="
)else (
set "Nodejs_Version="
)
if DEFINED OLD_Nodejs_Version_01 (
set "OLD_Nodejs_Version_00=%OLD_Nodejs_Version_01%"
set "OLD_Nodejs_Version_01="
)
if DEFINED OLD_Nodejs_Version_02 (
set "OLD_Nodejs_Version_01=%OLD_Nodejs_Version_02%"
set "OLD_Nodejs_Version_02="
)