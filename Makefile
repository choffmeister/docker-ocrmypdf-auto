.PHONY: build test

test:
	docker buildx build -t ocrmypdf-auto:test .
	docker run --rm -it -v "$(PWD)/data:/data" ocrmypdf-auto:test
