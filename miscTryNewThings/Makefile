oopASM : checkClassASM.cpp
	g++ -g -Og checkClassASM.cpp -o oopASM
	objdump -d oopASM > oopASM.s

lambdas : lambdas.cpp
	g++ -g -Og lambdas.cpp -o lambdas
	objdump -d lambdas > lambdas.s

learnc : learnC.c
	gcc -g -Og learnC.c -o learnC

queue : queue.c
	gcc -g -Og queue.c -o queue

modulus : modulus.c
	gcc -g modulus.c -o modulus
	objdump -d modulus > modulus.s

clean : 
	$(RM) oopASM
	$(RM) learnC
	$(RM) lambdas
	$(RM) queue
	$(RM) modulus
	$(RM) *.o
	$(RM) *.s
