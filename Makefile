LIBS = -lcurl
BIN = binario
FILE = binario.cpp
COMP = clang
SRC = Bin

all:	
	@echo Compiling...
	g++ -std=c++11 -Wall -Wextra -pedantic -Werror ${SRC}/${FILE} ${LIBS} -o ${SRC}/${BIN}

execute:
	${SRC}/${BIN}

delete:
	@echo "Deleting Bin executable"
	rm -f ${SRC}/${BIN}

# build-dockerfile:
# 	@echo "Building DockerFile"
# 	docker build --tag templatescanner:latest .

# docker-run:
# 	@docker run templatescanner:latest /bin/bash -c "echo Authorization: ApiKey your_api_key_here > api.txt;/var/set-env.sh"