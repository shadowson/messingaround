#!/bin/bash

echo "INSTALLING VIRTUAL ENV"
apt-get install virtualenv
echo ""
echo ""
echo "INSTALLING VIRTUAL ENV WRAPPER"
apt-get install virtualenvwrapper
echo ""
echo ""
echo "CREATING NEW VIRTUAL ENVIRONMENT AT" $(pwd)
virtualenv -p python3.5 venv
source venv/bin/activate
pip install requests
pip install pytest