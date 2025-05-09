#  A Flask API in Docker
# The Dockerfile tells Docker:

# 🐍 “Use Python”

# 📦 “Install Flask”

# 📁 “Copy app.py into the container”

# ▶️ “Run python app.py when the container starts”


# Use Python
FROM python:3.13-slim

# Specify the dir
WORKDIR /app

# specify the dependency file and install 
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# specify the actual application to copy
COPY app.py .

# this tels docker what port the app is running from/ listening to in the contianer
EXPOSE 5000

# Run the app
CMD ["python", "app.py"]