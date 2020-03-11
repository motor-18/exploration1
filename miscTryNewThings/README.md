README File

This is a write up for my notes on my explorations of this folder:

# How to use
- Requires Linux OS, with gcc/g++ installed. This was run on an Intel x86-64 machine.

- run "make clean" from command line to remove any extraneous files/executables

- then run "make oopASM" to obtain both the executable and assembly file for your code

# Classes, OOP and Assembly

## What is this:
I know systems programming at low levels - C, assembly, some C++. While I did some OOP long back, I have forgotten about it, and I'd like to understand it intuitively. I believe a good way to learn is to relate to what I already know about C programming and debugging. Hence this work is basically exploring how OOP gets "mapped" onto actual assembly that runs on a PC.

## Initial - Mar 03, 2020 - one private member only
- I created a class with a private member and a number of public functions. An object of this class was allocated on the stack. The compiled code was run in GDB and its assembly and status/context analysed.

- The variable (private member of class) was stored on the stack, as I would believe any stack-allocated object would be stored. 

- The public functions were stored in the code section, as would any other function. I did not see any function pointer being used or referred to in the code. Each function had an implicit pointer (referred to as "this") to the variable (private member), which as above was stored on the stack. I say implicit as this was not present in the C++ code, but was present in the assembly function calls.

- The stack created was 0x10 bytes or 16 bytes. 


## Next - Mar 04 2020 - private and public variables
- Followed from previous, but with an extra public variable that kinda sorta related to the private variable

- 16 bytes (same as before) still allocated on the stack.

- the public variable is stored 4 bytes above the private variable, both on the stack

- as before, the pointer to the "struct" of the class (with data) is passed "implicitly" - explicitly in assembly, implicitly in code

- There has been no change otherwise from previous.

## Constructors  - Mar 04 2020
- Constructors are pretty much like any public function in assembly. Stored on in the .code section and also passed a pointer to the variable. 

- public variables removed as it was felt they did not contribute much in understanding from now on. May be added later to explore inheritance and so forth

- Some issue exists in GDB about not being able to resolve overloaded functions, nevertheless I am able to review 

## Short detour - multiple objects on stack - Mar 04 2020
- Following from above, I declared a second object of the same class, and performed some operations on them.

- Here, 0x20 bytes (32 bytes) were declared on the stack for the two objects - so each object gets 16 bytes. 16 bytes may be due to Intel alignment rules (most likely).

- The second variable was accessed as any other stack variable.


## Overloaded constructors - Mar 05, 2020
- Overloaded constructors are present, with two instances initialized using each constructor.

- Overloaded constructors in assembly are simply different functions present in the code section, nearby each other. They have different addresses in the code section. One or the other is called explicitly - the compiler selects which constructor function to call

- Else all is same.


## Destructors and constructors in functions - Near Future



# Further exploration
- Functions that pass back and forth classes and objects, and testing constructors and destructors

- Very soon we will be done with simple studies of classes & objects vis-a-vis assembly and actual code on the machine. 

- In the near future, more exploration will be done on understanding the working of more complicated things through assembly:

* overloaded functions/constructors
* inheritance - abstract and derived classes
* virtual functions
* polymorphism

- If time permits, we will also understand where exactly do OOP errors/issues (running the wrong method, accessing private variable from main() etc.) come from, where they are highlighted and more.