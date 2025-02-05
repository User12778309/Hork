@echo off
PowerShell -Command "Start-Process python -ArgumentList 'uninstaller.py' -Verb RunAs"
pause