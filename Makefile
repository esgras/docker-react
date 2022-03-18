build-dev:
	@docker build -f Dockerfile.dev -t dev_docker .

docker-build:
	@docker-compose build
start:
	@docker-compose up -d

run:
	@docker run --rm -p 3000:3000 -v /app/node_modules  -v $$(pwd):/app  dev_docker