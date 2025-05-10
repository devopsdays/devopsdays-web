.PHONY: deps build server clean

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

# Clean up generated files
clean:
	rm -rf public/
	rm -rf resources/ 