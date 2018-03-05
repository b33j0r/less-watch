build:
	@ docker build -t omab/less-watch .

run:
	@ docker run --rm -v `pwd`:/app -w /app -ti omab/less-watch

publish: build
	@ docker push omab/less-watch

.PHONY: build run publish
