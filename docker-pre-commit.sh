docker build -t pre-commit-image .
docker run  -v $(pwd):/app pre-commit-image
