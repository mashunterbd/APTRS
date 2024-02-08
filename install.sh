#!/bin/bash

command -v python3 > /dev/null 2>&1 || { echo >&2 "Python3 is not installed yet"; exit 1; }

python_version="$(python3 --version 2>&1 | awk '{print $2}')"
py_major=$(echo "$python_version" | cut -d'.' -f1)
py_minor=$(echo "$python_version" | cut -d'.' -f2)
if [ "$py_major" -eq "3" ] && [ "$py_minor" -gt "7" ]; then
    echo "Python ${python_version} is installed"
else
    echo "APTRS require Python 3.8."
    exit 1
fi

python3 -m pip -V
if [ $? -eq 0 ]; then
    echo 'pip3 is installed'
else
    echo 'python3-pip not installed'
    exit 1
fi


echo 'Creating Python virtualenv'
rm -rf ./venv
python3 -m venv ./venv
if [ $? -eq 0 ]; then
    echo 'Activating virtualenv'
    source venv/bin/activate
    pip install --upgrade pip
else
    echo 'Unable to create Virtualenv.'
    exit 1
fi


echo 'Installing Python Requirements'
python3 -m pip install -r requirements.txt
python3 manage.py makemigrations
python3 manage.py migrate

wkhtmltopdf -V
if ! [ $? -eq 0 ]; then
    echo 'Download and Install wkhtmltopdf Version 0.12.6 for PDF Report Generation - https://wkhtmltopdf.org/downloads.html'
fi

# install libssl1.1_1.1.1 arm64
dpkg --install libssl1.1_1.1.1f-1ubuntu2_arm64.deb

#Clean libssl deb file
rm libssl1.1_1.1.1f-1ubuntu2_arm64.deb

# Check if wkhtmltopdf is installed
if command -v wkhtmltopdf &>/dev/null; then
    # Remove wkhtmltopdf if it is installed
    sudo apt purge wkhtmltopdf
fi

# Install specified version of wkhtmltopdf
sudo dpkg --install wkhtmltox_0.12.6-1.buster_arm64.deb

# Clean up downloaded .deb file
rm wkhtmltox_0.12.6-1.buster_arm64.deb


echo 'Installation Complete'
