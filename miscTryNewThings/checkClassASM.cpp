/*
 * Shamith Louis Saldanha, 03 March 2020
 *
 * A program to analyse the assembly for an object oriented program in C++
 * and to understand OOP C++ programs more
 *
 * Objectives: 
 * 1. Understand how class members and methods are depicted in assembly
 * (Do they look like C struct code -> assembly ??)
 *
 * 2. What happens when code outside a class accesses a private member?
 * Where does the error show up, if any? (compile time, runtime etc).
 *
 * 3. Given an object of a class, can we access private members indirectly through
 * pointer manipulation?
 *
 * */

#include<iostream>


class Car
{
    private:
        int x_pos; // x-axis position of car
    
    public:
        Car(); // default constructor with no args
        Car(int start); // default constructor with one arg
        void set_x_pos(int value); // set position
        // above to be replaced by appropriate constructor
        int read_x_pos(); // reads current position
        void change_x_pos(int change); // changes current position
};

Car::Car()
{
    x_pos = 0;
}

Car::Car(int start)
{
    x_pos = start;
}

void Car::set_x_pos(int value)
{
    x_pos = value;
}

int Car::read_x_pos()
{
    return x_pos;
}

void Car::change_x_pos(int change)
{
    x_pos += change;
}


int main()
{
    Car yaris;
    Car focus(200);
    std::cout<<"Yaris position at start = "<<yaris.read_x_pos()<<"\n";
    yaris.change_x_pos(45);
    std::cout<<"Yaris position after change 1 = "<<yaris.read_x_pos()<<"\n";
    yaris.change_x_pos(-20);
    std::cout<<"Yaris position after change 2 = "<<yaris.read_x_pos()<<"\n"; 
    std::cout<<"Focus position at start = "<<focus.read_x_pos()<<"\n";
    focus.change_x_pos(700);
    std::cout<<"Focus position after change 1 = "<<focus.read_x_pos()<<"\n"; 
}
