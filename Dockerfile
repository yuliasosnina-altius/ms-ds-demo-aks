# Base image with python v3.8.2 prepackaged
FROM python:3.8.2

# Define a build argument
ARG APP_DIR=/home/myapp

# Create a new folder inside container
RUN mkdir -p ${APP_DIR}

# Copy requirements.txt from local system inside container
COPY ./requirements.txt ${APP_DIR}/requirements.txt

# Install dependencies from requirements.txt
RUN pip install --upgrade pip
RUN pip install -r ${APP_DIR}/requirements.txt

# Copy the current directory to container and make it the working directory
COPY ./src/app.py ${APP_DIR}

# Set a working directory
WORKDIR ${APP_DIR}

# Run app.py when the container launches
CMD ["python", "app.py"]