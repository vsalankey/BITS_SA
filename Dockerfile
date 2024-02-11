# Base Python Image 
FROM python:3.11-alpine

# Copy local directory to the docker container
COPY . /

# Creating a working directory
WORKDIR /

# Installing packages
RUN pip install -r requirements.txt

# Exposing a port from the container
EXPOSE 8080

# Starting command for the container
ENTRYPOINT ["python"]

# Works with entrypoint to launch the app
CMD ["src/app.py"]
