# Makefile

CXX=g++
FLAGS=-std=c++11 -Wall -Wextra -Werror
DEPENDENCIES= src/main.o src/BST/bst.o src/AVL/avl.o

all: make_obj_dir bst avl cleanup

bst: ${DEPENDENCIES}
	${CXX} $^ ${FLAGS} -o $@
avl: ${DEPENDENCIES}
	${CXX} $^ ${FLAGS} -o $@

make_obj_dir:
	mkdir -p obj
cleanup:
	mv src/*.o src/AVL/*.o src/BST/*.o -t obj
clean:
	/bin/rm -f -r obj src/*.o src/AVL/*.o src/BST/*.o avl bst vgcore*
