date >> bash_log.txt
echo "Naviagating to Directory" >> bash_log.txt
cd /home/solar/Documents/startup
echo "Initializing Python" >> bash_log.txt
source venv/bin/activate
echo "Activated venv" >> bash_log.txt
pip install -r requirements.txt
echo "Installed dependencies" >> bash_log.txt
check_display()
{
	if [[ -n "$DISPLAY" ]]; then
		echo "Display on" >> bash_log.txt
		return 0
	else
		echo "Display off" >> bash_log.txt
		return 1
	fi
}

is_display_on()
{
	for i in $(seq 1 10);
	do
		echo "Checking Display" >> bash_log.txt
		check_display
		if [ $? -eq 0 ]; then
			echo "Successfully found Display" >> bash_log.txt
			break
		fi
		echo "Slept: " "$1" >> bash_log.txt
		sleep 5
	done
}
is_display_on
export DISPLAY=:0
python3 main.py > log.txt
echo "GUI Started" >> bash_log.txt
