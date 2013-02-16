#! /bin/sh

# A simple script to create this project's virtualenv.

virtualenv pythonenv
source pythonenv/bin/activate

easy_install pip

pip install -r requirements.txt
