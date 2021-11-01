@echo off
echo [%time% and %date%] Started Engine >>logs.txt
if EXIST engine.dll goto :true
echo [%time% and %date%] Error : not opened with app >>logs.txt
exit

:true
set chemin=%cd%
title Logo4USB Engine
color f
cls
del /f engine.dll
goto :start

:start
echo Quel est la lettre de la cle USB (Ne pas mettre les deux points !) ?
echo Vous ne savez pas ? Cliquez sur "Comment faire ?" dans le logiciel.
set /p lettre=Lettre :
cls
goto :image

:image
echo Quel est le nom de votre image (Sans le .ico a la fin) ?
echo ATTENTION : Votre image doit être dans le dossier Images (Cliquez sur Repertoire d'images pour l'ouvrir) et elle doit être en .ico !
set /p img=Nom de l'image :
cd "%cd%\Images"
if EXIST %img%.ico goto :1
if NOT EXIST %img%.ico goto :2

:1
cls
echo Patientez, nous appliquons l'image sur votre cle USB...
%lettre%:
echo ;AUTORUN GENERE PAR Logo4USB >autorun.inf
echo ;Luckyluka 17#5801 >>autorun.inf
echo [AUTORUN] >>autorun.inf
echo icon = %img%.ico >>autorun.inf
cls
copy "%chemin%\Images\%img%.ico" %lettre%:
cd "%chemin%"
cls
echo msgbox "Termine !" >msg.vbs
start msg.vbs
exit

:2
cls
echo [%time% and %date%] Invalid Image >>logs.txt
echo Image invalide.
pause
cls
goto :image