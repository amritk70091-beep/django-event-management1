#!/usr/bin/env python
import sys
import os

# Get the directory containing this script
script_dir = os.path.dirname(os.path.abspath(__file__))

# Add the script directory to Python path
sys.path.insert(0, script_dir)

# Change to the script directory
os.chdir(script_dir)

# Set Django settings module
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'event_management.settings')

# Test if we can import the module
try:
    import event_management
    print(f"Successfully imported event_management from: {event_management.__file__}")
except ImportError as e:
    print(f"Failed to import event_management: {e}")
    print(f"Current working directory: {os.getcwd()}")
    print(f"Python path: {sys.path}")
    sys.exit(1)

# Import and run Django
import django
from django.core.management import execute_from_command_line

# Initialize Django
django.setup()

# Run the server
if __name__ == '__main__':
    print("Starting Django development server...")
    execute_from_command_line(['manage.py', 'runserver', '--noreload'])
