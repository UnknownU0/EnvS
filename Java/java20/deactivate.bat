@echo off
echo ###################################
echo ## [96m%ActivatingEnv%%Java_Version%[0m Virtual Env BY Unknown ##
echo ###################################
echo    [101mDEACTIVATE[0m     ## CMD Edition ##
echo                   #################
set "PATH=%OLD_PATH%"
set "PROMPT=%OLD_PROMPT%"
if DEFINED OLD_Java_Version_00 (
set "Java_Version=%OLD_Java_Version_00%"
set "OLD_Java_Version_00="
)else (
set "Java_Version="
)
if DEFINED OLD_Java_Version_01 (
set "OLD_Java_Version_00=%OLD_Java_Version_01%"
set "OLD_Java_Version_01="
)
if DEFINED OLD_Java_Version_02 (
set "OLD_Java_Version_01=%OLD_Java_Version_02%"
set "OLD_Java_Version_02="
)