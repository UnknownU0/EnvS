@echo off
echo ######################################
echo ## [96m%ActivatingEnv%%Python_Version%[0m Virtual Env BY Unknown ##
echo ######################################
echo    [101mDEACTIVATE[0m        ## CMD Edition ##
echo                      #################
set "PATH=%OLD_PATH%"
set "PROMPT=%OLD_PROMPT%"
if DEFINED OLD_Python_Version_00 (
set "Python_Version=%OLD_Python_Version_00%"
set "OLD_Python_Version_00="
)else (
set "Python_Version="
)
if DEFINED OLD_Python_Version_01 (
set "OLD_Python_Version_00=%OLD_Python_Version_01%"
set "OLD_Python_Version_01="
)
if DEFINED OLD_Python_Version_02 (
set "OLD_Python_Version_01=%OLD_Python_Version_02%"
set "OLD_Python_Version_02="
)