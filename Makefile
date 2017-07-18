build:
	docker build -t ccache:devel -f Dockerfile.devel .
	docker run --rm -it ccache:devel which ccache
	docker build -t ccache:runtime -f Dockerfile.runtime .
	docker run --rm -it ccache:runtime which ccache
	docker image ls ccache

clean:
	docker rmi ccache:devel ccache:runtime
