@echo off
echo #####################################
echo ## [96m%ActivatingEnv%%PHP_Version%[0m Virtual Env BY Unknown ##
echo #####################################
echo    [101mDEACTIVATE[0m       ## CMD Edition ##
echo                     #################
set "PATH=%OLD_PATH%"
set "PROMPT=%OLD_PROMPT%"
if DEFINED OLD_PHP_Version_00 (
set "PHP_Version=%OLD_PHP_Version_00%"
set "OLD_PHP_Version_00="
)else (
set "PHP_Version="
)
if DEFINED OLD_PHP_Version_01 (
set "OLD_PHP_Version_00=%OLD_PHP_Version_01%"
set "OLD_PHP_Version_01="
)
if DEFINED OLD_PHP_Version_02 (
set "OLD_PHP_Version_01=%OLD_PHP_Version_02%"
set "OLD_PHP_Version_02="
)