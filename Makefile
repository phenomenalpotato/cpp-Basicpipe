BIN = binario
FILE = binario.cpp
COMP = clang++-8
COMP2 = g++
SRC = Bin

all:	
	@echo Compiling...
	${COMP} -std=c++11 -Wall -Wextra -pedantic -Werror ${SRC}/${FILE} ${LIBS} -o ${SRC}/${BIN}

# Fazer com que esses sanitizers já compilem e executem e consigam redirecionar o output com o nome do arquivo sendo o nome do teste.txt. 
# E.g. 	${COMP} -std=c++11 -Wall -Wextra ${SRC}/${FILE}  -o ${SRC}/${BIN} -g && ${SRC}/${BIN} > nome_do_test.txt
# Se eu não me engano da para fazer isso utilizando uma mascara que irá pegar o nome do teste que estamos executando

address-sanitizer:
	${COMP} -std=c++11 -Wall -Wextra ${SRC}/${FILE} -fsanitize=address -o ${SRC}/${BIN} -g

memory-sanitizer:
	${COMP} -std=c++11 -Wall -Wextra ${SRC}/${FILE} -fsanitize=memory -o ${SRC}/${BIN} -g -fsanitize-memory-track-origins

thread-sanitizer:
	${COMP} -D 'THREAD' -std=c++11 -Wall -Wextra ${SRC}/${FILE} -fsanitize=thread -o ${SRC}/${BIN} -g 

undefined-behavior-sanitizer:
	${COMP} -std=c++11 -Wall -Wextra ${SRC}/${FILE} -fsanitize=undefined -o ${SRC}/${BIN} -g -fno-omit-frame-pointer

leak-sanitizer:
	${COMP} -std=c++11 -Wall -Wextra ${SRC}/${FILE} -fsanitize=leak -o ${SRC}/${BIN} -g

execute:
	${SRC}/${BIN}

delete:
	@echo "Deleting Bin executable"
	rm -f ${SRC}/${BIN}

build-dockerfile:
	@echo "Building DockerFile"
	docker build --tag basic-cpp-pipe:latest .

docker-run-address:
	@docker run basic-cpp-pipe:latest /bin/bash -c "make address-sanitizer"