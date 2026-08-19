.PHONY: deps build server clean docker-server

HUGO_VERSION := $(shell grep 'HUGO_VERSION:' .github/workflows/hugo.yml | sed 's/.*: //')
NODE_VERSION := $(shell grep 'NODE_VERSION:' .github/workflows/hugo.yml | sed 's/.*: //')

# Copy dependencies from node_modules to assets
deps:
	./utilities/build-scripts/copy-scss-deps.sh
	./utilities/build-scripts/copy-js-deps.sh

# Build the site
build: deps
	hugo

# Run the development server
server: deps
	hugo server

# Run the development server via Docker (versions sourced from .github/workflows/hugo.yml)
docker-server:
	NODE_VERSION=$(NODE_VERSION) HUGO_VERSION=$(HUGO_VERSION) \
		docker compose -f utilities/contrib/docker-compose.yml up

# Clean up generated files
clean:
	rm -rf public/
	rm -rf resources/
