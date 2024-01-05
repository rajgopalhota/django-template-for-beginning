Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass

echo "Installing dependencies..."
pip install -r requirements.txt

echo "Applying migrations..."
python manage.py makemigrations
python manage.py migrate

echo "Creating superuser..."
echo "from django.contrib.auth.models import User; User.objects.filter(username='admin').exists() or User.objects.create_superuser('admin', 'admin@example.com', 'cybertron_23')" | python manage.py shell

echo "Setup complete! Have a blast!"
