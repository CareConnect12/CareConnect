import os
import django
from django.contrib.auth import get_user_model

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'minorproject.settings')
django.setup()

User = get_user_model()

username = 'minor'
password = 'careconnect'

if not User.objects.filter(username=username).exists():
    User.objects.create_superuser(username=username, password=password)
    print('Superuser created successfully')
else:
    print('Superuser already exists')
