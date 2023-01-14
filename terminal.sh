# Build docker-image:
docker build -t legal-analytics:latest .

# Run the container:
docker run -p 8501:8501 legal-analytics
