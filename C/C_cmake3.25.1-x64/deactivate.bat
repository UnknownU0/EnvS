@echo off
echo ##############################################
echo ## [96m%ActivatingEnv%%C_Version%[0m Virtual Env BY Unknown ##
echo ##############################################
echo    [101mDEACTIVATE[0m                ## CMD Edition ##
echo                              #################
set "PATH=%OLD_PATH%"
set "PROMPT=%OLD_PROMPT%"
if DEFINED OLD_C_Version_00 (
set "C_Version=%OLD_C_Version_00%"
set "OLD_C_Version_00="
)else (
set "C_Version="
)
if DEFINED OLD_C_Version_01 (
set "OLD_C_Version_00=%OLD_C_Version_01%"
set "OLD_C_Version_01="
)
if DEFINED OLD_C_Version_02 (
set "OLD_C_Version_01=%OLD_C_Version_02%"
set "OLD_C_Version_02="
)