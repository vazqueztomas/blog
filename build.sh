#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Upgrade pip
python3 -m pip install --upgrade pip

# Install pipenv
python3 -m pip install pipenv

# Ensure pipenv is available in the PATH
export PATH="/python312/bin:$HOME/.local/bin:$PATH"

# Set environment variable to force pipenv to ignore the existing virtual environment
export PIPENV_IGNORE_VIRTUALENVS=1

# Install dependencies from Pipfile.lock using the specified Python version
pipenv install --deploy --ignore-pipfile --python python3.12

# Apply database migrations
pipenv run python manage.py migrate

# Collect static files
pipenv run python manage.py collectstatic --noinput