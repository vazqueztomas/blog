#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Create a virtual environment
python3.9 -m venv venv

# Activate the virtual environment
source venv/bin/activate

# Upgrade pip to the latest version
pip install --upgrade pip

# Set environment variable to force pipenv to ignore the existing virtual environment
export PIPENV_IGNORE_VIRTUALENVS=1

# Install dependencies from Pipfile.lock using the specified Python version
pip install pipenv
pipenv install --deploy --ignore-pipfile --python /vercel/path1/venv/bin/python3.9

# Apply database migrations
pipenv run python manage.py migrate

# Collect static files
pipenv run python manage.py collectstatic --noinput