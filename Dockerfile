# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# Install system dependencies required for building some Python packages
RUN apt-get update && apt-get install -y \
    build-essential \
    libffi-dev \
    libxml2-dev \
    libxslt1-dev \
    zlib1g-dev \
    && rm -rf /var/lib/apt/lists/*

# Copy the requirements file into the container
COPY requirements.txt ./

# Update pip and setuptools
RUN pip install --upgrade pip setuptools

# Install any dependencies with verbose output
RUN pip install --no-cache-dir -r requirements.txt -v

# Copy all files and folders from the host machine to the container
COPY . .

# Expose the application port
EXPOSE 5000

# Step 6: Run the main application
CMD ["python", "./app/web-app/app.py"]
