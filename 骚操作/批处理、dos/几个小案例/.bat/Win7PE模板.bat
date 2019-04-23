    @echo off
    
    REM  
    REM {ad6c7bc8-fa0f-11da-8ddf-0013200354d8}  
    REM
    set RAMDISK_OPTIONS={ad6c7bc8-fa0f-11da-8ddf-0013200354d8}

    REM
    REM {572bcd56-ffa7-11d9-aae0-0007e994107d}, GUID for the WinPE boot entry
    REM

    set WINPE_GUID={572bcd56-ffa7-11d9-aae0-0007e994107d}

    REM
    REM Set Timeout
    REM

    bcdedit.exe -timeout 5

    REM
    REM Create Ramdisk device options for the boot.sdi file
    REM
    bcdedit.exe -create %RAMDISK_OPTIONS% -d "Win 7 PE" -device
    bcdedit.exe -set %RAMDISK_OPTIONS% ramdisksdidevice partition=C:
    bcdedit.exe -set %RAMDISK_OPTIONS% ramdisksdipath \boot.sdi

    REM
    REM Create WinRE boot entry
    REM

    bcdedit.exe -create %WINPE_GUID% -d "Ramdisk Device Options" -application OSLOADER
    bcdedit.exe -set %WINPE_GUID% device ramdisk=[C:]\winre.wim,%RAMDISK_OPTIONS%
    bcdedit.exe -set %WINPE_GUID% path \windows\system32\boot\winload.exe
    bcdedit.exe -set %WINPE_GUID% osdevice ramdisk=[C:]\winre.wim,%RAMDISK_OPTIONS%
    bcdedit.exe -set %WINPE_GUID% systemroot \windows
    bcdedit.exe -set %WINPE_GUID% detecthal yes
    bcdedit.exe -set %WINPE_GUID% nx optin
    bcdedit.exe -set %WINPE_GUID% winpe yes

    bcdedit.exe -displayorder %WINPE_GUID% /addlast

    echo Windows Recovery Environment°²×°Íê±Ï¡£
    pause