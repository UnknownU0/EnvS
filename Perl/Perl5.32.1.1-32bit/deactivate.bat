@echo off
echo ###############################################
echo ## [96m%ActivatingEnv%%Perl_Version%[0m Virtual Env BY Unknown ##
echo ###############################################
echo    [101mDEACTIVATE[0m                 ## CMD Edition ##
echo                               #################
set "PATH=%OLD_PATH%"
set "PROMPT=%OLD_PROMPT%"
if DEFINED OLD_Perl_Version_00 (
set "Perl_Version=%OLD_Perl_Version_00%"
set "OLD_Perl_Version_00="
)else (
set "Perl_Version="
)
if DEFINED OLD_Perl_Version_01 (
set "OLD_Perl_Version_00=%OLD_Perl_Version_01%"
set "OLD_Perl_Version_01="
)
if DEFINED OLD_Perl_Version_02 (
set "OLD_Perl_Version_01=%OLD_Perl_Version_02%"
set "OLD_Perl_Version_02="
)