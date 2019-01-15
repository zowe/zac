@ECHO OFF
REM Check if dco exists. If so, run enable.
WHERE dco >nul 2>nul
IF %ERRORLEVEL% EQU 0 (
    dco enable
) ELSE (
    REM If dco is not installed, check for ruby and try to install it. Otherwise print ruby install instructions.
    WHERE ruby >nul 2>nul
    IF ERRORLEVEL 0 (
        echo "Installing coderanger/dco..."
        gem install dco
        REM Rather than re-run the script from the top, lets enable dco after the initial install.
        CALL :postInstallDcoEnable
    ) ELSE (
        echo "Ruby not found. Ruby is required to use the coderanger/dco signing tool."
        echo 'To install Ruby, visit https://www.ruby-lang.org/en/downloads/.'
        echo "Once Ruby is installed, open a new shell session and rerun this script."
    )
)


REM If dco is installed by this script, run this function afterwards to enable dco. If dco fails or cannot be found,
REM then users will need to investigate their local environment. 
::postInstallDcoEnable
:postInstallDcoEnable
WHERE dco >nul 2>nul
IF %ERRORLEVEL% EQU 0 (
    dco enable
) ELSE (
    echo '"dco" command was not found. Please check your gem modules for dco. ("gem query --local")'
)
