# Use a Python image with the necessary dependencies
FROM python:3.8
USER root

# Set the working directory
WORKDIR /app

# Install pre-commit
RUN pip install pre-commit

RUN ls -la .
# Copy the pre-commit configuration file into the container
COPY .git /app/.git
#COPY .pre-commit-config-docker.yaml /app/.pre-commit-config.yaml

# Install the pre-commit hooks
RUN pre-commit install

# Copy the project files into the container
COPY . /app

# Define the entrypoint to run pre-commit hooks
#CMD ["sleep", "infinity"]

ENTRYPOINT ["pre-commit", "run", "--all-files"]
