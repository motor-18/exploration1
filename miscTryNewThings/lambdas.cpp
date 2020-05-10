/**
 * @file        lambdas.cpp
 *
 * @brief       To look at internals of lambdas through
 *              disassembled code.
 *
 * */

#include <iostream>
#include <functional>

void foo (int x, int y) {
    if (x > y) {
        x--;
    } else if (x < y) {
        y--;
    } else {
        x *= y;
        y = 10;
    }
    std::cout<<"The sum is: "<< x+y << "\n";
}


void foo_parent (const std::function<void()> &fun) {
    fun();
    std::cout<<"Lambda executed\n";
}


int main() {
    std::cout<<"Program started\n";
    foo(10,11);
    std::cout<<"Normal function executed\n";
    foo_parent([]{foo(10,11);});
    std::cout<<"Lambda function with no captures executed\n";
    int x = 10;
    int y = 11;
    foo_parent([x, y]{foo(x, y);});
    std::cout<<"Lambda function with captures executed\n";
}    
