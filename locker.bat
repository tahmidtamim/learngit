cls
@ECHO OFF
title Folder tamimsp
if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK
if NOT EXIST tamimsp goto MDLOCKER
:CONFIRM
echo to lock the folder type your special key
if %cho%==Y goto LOCK
if %cho%==y goto LOCK
if %cho%==n goto END
if %cho%==N goto END
echo Invalid choice.
goto CONFIRM
:LOCK
ren tamimsp "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
echo Folder locked
goto End
:UNLOCK
echo password ! ! !
set/p "pass=>"
if NOT %pass%==192168 goto FAIL
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" tamimsp
echo Folder Unlocked successfully
goto End
:FAIL
echo Ask tamim for password
goto end
:MDLOCKER
md tamimsp
echo tamimsp created successfully
goto End
:End