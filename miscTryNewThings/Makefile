CC = g++

oopASM : checkClassASM.cpp
	g++ -S -g -Og checkClassASM.cpp -o checkClassASM.s 
	g++ -g -Og checkClassASM.cpp -o oopASM 

learnc : learnC.c
	gcc -g -Og learnC.c -o learnC

queue : queue.c
	gcc -g -Og queue.c -o queue

clean : 
	rm oopASM
	rm learnC
