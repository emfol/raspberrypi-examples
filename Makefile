
SRC_JAVA := src/com/example/Test.java
BIN_JAVA := $(subst src/,bin/,$(SRC_JAVA:%.java=%.class)) 


all: c java js

bin:
	mkdir bin

bin/test: src/test.c bin
	cc -ansi -Wall -pedantic "$<" -o "$@"

bin/test.js: src/test.js bin
	cp "$<" "$@"

$(BIN_JAVA): $(SRC_JAVA) bin
	javac -encoding "UTF-8" -g:none -d bin "$<"

c: bin/test
	echo '> Running C version...'
	bin/test 'The First...' 'The Second...' 'The Third...' 'The Fourth...' 'The Fifth...'
	echo

js: bin/test.js
	echo '> Running Node.js version...'
	node bin/test.js
	echo

java: $(BIN_JAVA)
	echo '> Running Java version...'
	java -classpath bin com.example.Test 'The First...' 'The Second...' 'The Third...'
	echo

.PHONY: all c js java
