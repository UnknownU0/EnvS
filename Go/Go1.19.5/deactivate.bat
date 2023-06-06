@echo off
echo #####################################
echo ## [96m%ActivatingEnv%%Go_Version%[0m Virtual Env BY Unknown ##
echo #####################################
echo    [101mDEACTIVATE[0m       ## CMD Edition ##
echo                     #################
set "PATH=%OLD_PATH%"
set "PROMPT=%OLD_PROMPT%"
if DEFINED OLD_Go_Version_00 (
set "Go_Version=%OLD_Go_Version_00%"
set "OLD_Go_Version_00="
)else (
set "Go_Version="
)
if DEFINED OLD_Go_Version_01 (
set "OLD_Go_Version_00=%OLD_Go_Version_01%"
set "OLD_Go_Version_01="
)
if DEFINED OLD_Go_Version_02 (
set "OLD_Go_Version_01=%OLD_Go_Version_02%"
set "OLD_Go_Version_02="
)