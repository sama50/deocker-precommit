# Use a Python image with the necessary dependencies
FROM python:3.8
USER root

# Set the working directory
WORKDIR /app
COPY . /app
COPY .git /app/.git
# Install pre-commit
RUN pip install pre-commit

# Copy the pre-commit configuration file into the container
RUN pre-commit install

ENTRYPOINT ["pre-commit", "run"]
