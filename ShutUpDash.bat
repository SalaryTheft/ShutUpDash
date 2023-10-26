@echo off
fltmc >nul 2>&1 || (
    echo Administrator privileges are required.
    exit 1
)

if not exist "%OculusBase%Support\oculus-dash\dash\assets\raw\audio_dash\Build\Desktop\Master Bank.bank.backup" (
    echo This script will remove all UI sounds from the Oculus Dash, including ambient humming sounds.
    pause
    ren "%OculusBase%Support\oculus-dash\dash\assets\raw\audio_dash\Build\Desktop\Master Bank.bank" "Master Bank.bank.backup"
    ren "%OculusBase%Support\oculus-dash\dash\assets\raw\audio_dash\Build\Desktop\Master Bank.strings.bank" "Master Bank.strings.bank.backup"
    type nul > "%OculusBase%Support\oculus-dash\dash\assets\raw\audio_dash\Build\Desktop\Master Bank.bank"
    type nul > "%OculusBase%Support\oculus-dash\dash\assets\raw\audio_dash\Build\Desktop\Master Bank.strings.bank"
    echo Done.
) else (
    echo This script will restore the original UI sounds of the Oculus Dash.
    pause
    del "%OculusBase%Support\oculus-dash\dash\assets\raw\audio_dash\Build\Desktop\Master Bank.bank"
    del "%OculusBase%Support\oculus-dash\dash\assets\raw\audio_dash\Build\Desktop\Master Bank.strings.bank"
    ren "%OculusBase%Support\oculus-dash\dash\assets\raw\audio_dash\Build\Desktop\Master Bank.bank.backup" "Master Bank.bank"
    ren "%OculusBase%Support\oculus-dash\dash\assets\raw\audio_dash\Build\Desktop\Master Bank.strings.bank.backup" "Master Bank.strings.bank"
    echo Done.
)