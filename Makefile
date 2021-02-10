BIN = binario
FILE = binario.cpp
COMP = clang++-8
COMP2 = g++
SRC = Bin

all:	
	@echo Compiling...
	${COMP} -std=c++11 -Wall -Wextra -pedantic -Werror ${SRC}/${FILE} ${LIBS} -o ${SRC}/${BIN}

address-sanitizer:
	${COMP} -std=c++11 -Wall -Wextra -pedantic -Werror ${SRC}/${FILE} -fsanitize=address -o ${SRC}/${BIN} -g

memory-sanitizer:
	${COMP} -std=c++11 -Wall -Wextra ${SRC}/${FILE} -fsanitize=memory -o ${SRC}/${BIN} -g -fsanitize-memory-track-origins

execute:
	${SRC}/${BIN} > diagnose.txt

delete:
	@echo "Deleting Bin executable"
	rm -f ${SRC}/${BIN}

# build-dockerfile:
# 	@echo "Building DockerFile"
# 	docker build --tag templatescanner:latest .

# docker-run:
# 	@docker run templatescanner:latest /bin/bash -c "echo Authorization: ApiKey your_api_key_here > api.txt;/var/set-env.sh"