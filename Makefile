IMAGE_NAME = rsky/fontforge-flip-solidus

image: Dockerfile Makefile2.txt flip-solidus.sh
	docker build -t $(IMAGE_NAME) .

interactive: image
	docker run -v $(PWD)/fonts:/workspace/fonts -it $(IMAGE_NAME) bash

all: image

clean:
	rm -fv fonts/dst/*

.PHONY: all clean interactive
