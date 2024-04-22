#!/bin/bash

# Ensure pip is available
python -m ensurepip
python -m pip install --upgrade pip

# Install dependencies from requirements.txt
pip install -r requirements.txt

# Execute Django collectstatic command
python3.9 manage.py collectstatic --noinput