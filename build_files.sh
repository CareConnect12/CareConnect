echo " BUILD START"
python3 -m venv env
source env/bin/activate
#!/bin/bash
# Install dependencies
echo "Installing dependencies..."
pip install -r requirements.txt

echo "Making the migrations..."
python manage.py makemigrations
# Apply migrations
echo "Applying migrations..."
python manage.py migrate

# Create superuser (optional)
echo "Creating superuser (optional)..."
python create_superuser.py

# Collect static files
echo "Collecting static files..."
python manage.py collectstatic --noinput --clear

echo "Build process completed."

pip install -r requirements.txt

python3 manage.py collectstatic --noinput --clear
echo " BUILD END" 
