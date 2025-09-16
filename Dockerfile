FROM python

WORKDIR /app

COPY requirements.txt .

ENV PYTHONDONTWRITEBITECODE=1
ENV PYTHONUNBUFFERED=1

RUN pip install -r requirements.txt

COPY . .

CMD ["python", "app.py" , runserver , "0.0.0.0.8000"]
# End of Dockerfile
# This Dockerfile sets up a Python environment, installs dependencies from requirements.txt,
# copies the application code, and runs app.py on container start.
# Make sure to create a requirements.txt file with your Python dependencies
# and an app.py file with your application code in the same directory as this Dockerfile.
# To build the Docker image, run:
# docker build -t my-python-app .
# To run the Docker container, use:
# docker run -p 5000:5000 my-python-app
# Replace 'my-python-app' with your desired image name.
# Replace 'app.py' with your main application file if different.
# Ensure you have Docker installed and running on your machine.
# This Dockerfile is a basic template and may need adjustments based on your specific application requirements.
# and dependencies.
# For production use, consider using a specific Python version (e.g., python:3.9) instead of the latest.
# Also, consider adding a .dockerignore file to exclude unnecessary files from the Docker build context.
# Example .dockerignore content:
# __pycache__/
# *.pyc
# .git/
# .env
# logs/
# node_modules/
# .DS_Store
# This helps to keep the Docker image size smaller and build times faster.
# Always test your Docker image locally before deploying it to production.
