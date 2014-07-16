#! /bin/sh

# A simple script to create this project's virtualenv.

project_root=$(dirname "$0")
virtualenv "$project_root/pythonenv"
. "$project_root/pythonenv/bin/activate"

easy_install pip

pip install -r requirements.txt
