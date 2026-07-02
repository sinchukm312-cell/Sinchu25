# Use Python base image
FROM python:3.11

# Set working directory
WORKDIR /app

# Copy files
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy app code
COPY . .

# Expose Flask port
EXPOSE 5000

# Run app
CMD ["python", "app.py"]