#!/usr/bin/env bash
set -o errexit

# Install dependencies
pip install -r requirements.txt

# Collect static files
python manage.py collectstatic --no-input --clear

# Apply database migrations
python manage.py migrate

# Create/update deployment admin
echo "Setting up admin user..."
python manage.py createadmin

echo "Build completed successfully!"
