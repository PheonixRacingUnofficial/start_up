echo "Initializing Python"
cd {PATH}
source venv/bin/activate
echo "Activated venv"
pip install -r requirements.txt
echo "Installed dependencies"
python3 main.py
echo "GUI Started"
