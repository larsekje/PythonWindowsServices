@ECHO OFF
nssm install "PythonWindowsServiceExample" "C:\prog\python\windows_service\venv\Scripts\python.exe" "C:\prog\python\windows_service\windows_service\example.py"
nssm set PythonWindowsServiceExample Appstderr "C:\prog\python\windows_service\logs\stderr.log"
nssm set PythonWindowsServiceExample Appstdout "C:\prog\python\windows_service\logs\stdout.log"
nssm start PythonWindowsServiceExample
pause