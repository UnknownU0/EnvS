@echo off
echo #####################################
echo ## [96m%ActivatingEnv%%R_Version%[0m Virtual Env BY Unknown ##
echo #####################################
echo    [101mDEACTIVATE[0m       ## CMD Edition ##
echo                     #################
set "PATH=%OLD_PATH%"
set "PROMPT=%OLD_PROMPT%"
if DEFINED OLD_R_Version_00 (
set "R_Version=%OLD_R_Version_00%"
set "OLD_R_Version_00="
)else (
set "R_Version="
)
if DEFINED OLD_R_Version_01 (
set "OLD_R_Version_00=%OLD_R_Version_01%"
set "OLD_R_Version_01="
)
if DEFINED OLD_R_Version_02 (
set "OLD_R_Version_01=%OLD_R_Version_02%"
set "OLD_R_Version_02="
)