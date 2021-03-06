#!/bin/bash

echo "SETTING ENVIRONMENTAL VARIABLES"
export RUNID=$(uuidgen)
export PHRASE="I'm A Little TeaPot"
echo ""
echo ""
echo "INSTALLING VIRTUAL ENV"
apt-get install virtualenv
echo ""
echo ""
echo "INSTALLING VIRTUAL ENV WRAPPER"
apt-get install virtualenvwrapper
echo ""
echo ""
echo "CREATING NEW VIRTUAL ENVIRONMENT AT" $(pwd)
virtualenv -p python3.5 $RUNID
source venv/bin/activate
echo ""
echo ""
echo "INSTALLING ALL REQUIREMENTS"
pip install -r requirements.txt
echo ""
echo ""
echo "STARTING app.py"
python app.py
echo ""
echo ""
echo "REMOVING VIRTUAL ENVIRONMENT"
sudo rm $RUNID -rf