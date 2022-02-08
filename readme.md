
# What is this?
A proof-of-concept on how to run a python script as a windows service using [nssm](https://nssm.cc/download).

NSSM (the Non-Sucking Service Manager) allows easy creation of windows services with a few simple commands:
1. `nssm install "SERVICE_NAME" "PATH_TO_PYTHON.exe" "PATH_TO_PYTHON_SCRIPT.exe"`
2. Configure logging (optional)
   1. `nssm set SERVICE_NAME Appstdout "PATH_TO_STDOUT.log"` (file must exist)
   2. `nssm set SERVICE_NAME Appstderr "PATH_TO_STDERR.log"` (file must exist)
3. `nssm start SERVICE_NAME`

For more information see the link [here](https://medium.com/@m_ko/how-to-run-python-scripts-as-a-windows-service-979082706360) or under the Acknowledgements section. Also have a look at `/scripts` for example usage.

# Prerequisites 
* nssm downloaded and added to your `PATH`
* A python environment with the packages from `requirements.txt` installed
* The location of `python.exe` of said environment (typically `/venv/Scripts/python.exe`)
* (optional) create files for logging, nssm does not do this by itself. 

The `/scripts` folder contains examples on how to "install" the service. You must probably modify the paths according to your system.

If successfully installed you should see "Hello, World!" if you go to http://192.168.0.217:9000/. IP address might differ, see logs.

## Installing NSSM
1. Download and extract [nssm](https://nssm.cc/download) to a location of your choice.
2. Add the root folder of the nssm.exe file to your PATH variable, i.e. `C:\nssm-2.24\nssm-2.24\win64`

# Acknowledgments
Thanks to https://medium.com/@m_ko/how-to-run-python-scripts-as-a-windows-service-979082706360