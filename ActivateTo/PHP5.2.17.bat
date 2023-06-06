@echo off
chcp 65001 > %temp%\Unknown_chcp65001
set "ActivatingEnv=PHP"
set "Unknown_OriDir_01=%cd%"
cd /d %~dp0
set "Unknown_OriDir_00=%cd%"
if "%PROMPT%"=="$P$G" (
set "OLD_PROMPT=[91mNo[0m[41mVENV[0m $P$G"
)else (
set "OLD_PROMPT=%PROMPT%"
)
if DEFINED PHP_Version (
if DEFINED OLD_PHP_Version_00 (
if DEFINED OLD_PHP_Version_01 (
set "OLD_PHP_Version_02=%OLD_PHP_Version_01%"
)
set "OLD_PHP_Version_01=%OLD_PHP_Version_00%"
)
set "OLD_PHP_Version_00=%PHP_Version%"
)
set "PHP_Version=5.2.17"
set "Now_AllVENV= "
if DEFINED Python_Version (
set "Now_AllVENV=[92mPython[0m[42m%Python_Version%[0m %Now_AllVENV%"
)
if DEFINED Java_Version (
set "Now_AllVENV=[92mJava[0m[42m%Java_Version%[0m %Now_AllVENV%"
)
if DEFINED Go_Version (
set "Now_AllVENV=[92mGo[0m[42m%Go_Version%[0m %Now_AllVENV%"
)
if DEFINED PHP_Version (
set "Now_AllVENV=[92mPHP[0m[42m%PHP_Version%[0m %Now_AllVENV%"
)
if DEFINED Ruby_Version (
set "Now_AllVENV=[92mRuby[0m[42m%Ruby_Version%[0m %Now_AllVENV%"
)
if DEFINED Perl_Version (
set "Now_AllVENV=[92mPerl[0m[42m%Perl_Version%[0m %Now_AllVENV%"
)
if DEFINED Nodejs_Version (
set "Now_AllVENV=[92mNodejs[0m[42m%Nodejs_Version%[0m %Now_AllVENV%"
)
if DEFINED R_Version (
set "Now_AllVENV=[92mR[0m[42m%R_Version%[0m %Now_AllVENV%"
)
if DEFINED C_Version (
set "Now_AllVENV=[92mC[0m[42m%C_Version%[0m %Now_AllVENV%"
)
set "PROMPT=[42m↓[0m%Now_AllVENV%$_[42m>[0m$P$G"
cd /d ..\%ActivatingEnv%\%ActivatingEnv%%PHP_Version%\
set "OLD_PATH=%PATH%"
set "PHP_VENV=%cd%"
if NOT DEFINED System_PATH (
set "System_PATH=%PATH%"
)
set "PATH=%Python_VENV%;%Java_VENV%;%Go_VENV%;%PHP_VENV%;%Ruby_VENV%;%Perl_VENV%;%Nodejs_VENV%;%R_VENV%;%C_VENV%;%System_PATH%"
cd /d %Unknown_OriDir_01%
echo ######################################
echo ## [96m%ActivatingEnv%%PHP_Version%[0m Virtual Env BY Unknown ##
echo ######################################
echo    [42mACTIVATE[0m          ## CMD Edition ##
echo                      #################
cmd
echo ######################################
echo ## [96m%ActivatingEnv%%PHP_Version%[0m Virtual Env BY Unknown ##
echo ######################################
echo    [101mDEACTIVATE[0m        ## CMD Edition ##
echo                      #################
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