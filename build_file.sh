#!/bin/bash

# Ensure pip is available
python3 -m ensurepip
python3 -m pip install --upgrade pip

# Install dependencies from requirements.txt
python3 install -r requirements.txt

# Execute Django collectstatic command
python3.9 manage.py collectstatic --noinput