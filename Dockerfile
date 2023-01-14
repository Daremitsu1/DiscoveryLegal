# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the script and the creds.json file
COPY app.py .
COPY creds.json .

# Expose the default Streamlit port
EXPOSE 8501

# Run the script
CMD ["streamlit", "run", "app.py"]
