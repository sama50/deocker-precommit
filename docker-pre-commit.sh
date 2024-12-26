#docker compose -f ./docker-compose.yml up

docker build -t pre-commit-image .
docker run  -v $(pwd):/app pre-commit-image
