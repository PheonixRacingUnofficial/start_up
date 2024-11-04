# Initilization Code
The following python files are what the raspberry pi will automatically run upon power up </br>
## Installation
### Tkinter
Linux/Debian/Raspberry Pi OS: `sudo apt install python-tk` </br>
### Python Files
Set up virtual environment: `python3 -m venv venv` </br>
Install dependencies: `pip install -r requirements.txt` </br>
## Config changes to the Raspberry Pi
Change startup.sh to contain {PATH} to this directory: `pwd` </br>
Ensure that startup.sh has executable permissions: `chmod +x startup.sh` </br>
Using ***contrab*** run the following command: </br>
`contrab -e` enter `1` bottom of file `@reboot {PATH}/startup.sh` </br>
