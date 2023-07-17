# Use the official python image 
FROM python:3.9

# Set the working directory to /app
WORKDIR /app

# Copy the requirements.txt file from the host
COPY requirements.txt .

# Install the Python dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt


# Copy the current directory from the host to the app directory
COPY . .

# Expose port 5000 to enable access to the application
EXPOSE 5000

# Specify the command to be executed upon container startup
CMD ["python", "./app.py"]
