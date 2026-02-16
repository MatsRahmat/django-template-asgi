@echo off
set IP=0.0.0.0
set PORT=8000

echo activate venv-3.13
call ..\venv-3.13-1\Scripts\activate.bat

call python -m pip list

echo Starting on %IP%:%PORT%
watchmedo auto-restart --directory=./ --pattern="*.py" --recursive -- uvicorn django_template.asgi:application --host %IP% --port %PORT%