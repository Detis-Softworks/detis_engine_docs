@echo off
rem Preview the Detis Engine docs over http.
rem Opening index.html from disk (file://) is blocked by the browser, so Docsify
rem cannot load the .md files. This script serves the folder on localhost instead.
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0tools\serve_docs.ps1" -Open
pause
