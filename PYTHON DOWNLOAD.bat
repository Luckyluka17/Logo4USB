@echo off
title Telecharger Python
cls
color f
curl https://www.python.org/ftp/python/3.10.0/python-3.10.0-amd64.exe -o Python.exe
start Python.exe
exit