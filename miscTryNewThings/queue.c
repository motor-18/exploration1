#include <stdio.h>

#define QUEUE_SIZE 5

#define E(c) if(enqueue((char) c)) {printf("CouldNotEnqueue\n");}
#define D(c) if(dequeue((char*) c)) {printf("CouldNotDequeue\n");} \
    else {printf("Value is %c\n", *c);}

typedef enum q_state_t {empty, partial, full} q_state_t;

typedef struct queue_t
{
    q_state_t status;
    char q[QUEUE_SIZE];
    int enq_idx;
    int deq_idx;
} queue_t;

queue_t test_q;

int enqueue(char);
int dequeue(char*);
void q_init();
void q_print();

void main()
{
    q_init();
    q_print();

    int i; 
    char c;
    for(i = 0; i < 7; i++)
        E('4');
    q_print();

    for(i = 0; i < 5; i++)
        D(&c);
    q_print();

    for(i = 0; i < 2; i++)
        E('P');
    q_print();

    for(i = 0; i < 4; i++)
        D(&c);
    q_print();
}

int enqueue(char c)
{
    int next;
    switch (test_q.status)
    {
    case empty:
        test_q.enq_idx = 0;
        test_q.deq_idx = 0;
        test_q.q[0] = c;
        test_q.status = partial;
        return 0;
        break;
    
    case partial:
        // get next position with wrap over
        next = test_q.enq_idx+1;
        if(next >= QUEUE_SIZE)
            next = 0;
        if(next == test_q.deq_idx)
        {
            test_q.status = full;
            return -1;
            break;
        }
        test_q.q[next] = c;
        test_q.enq_idx = next;
        return 0;
        break;
    
    case full:
        return -1;
        break;
    
    default:
        break;
    }
    return -1;
}

int dequeue(char* cp)
{
    int next;
    switch(test_q.status)
    {
        case empty:
            return -1;
            break;
        
        case partial:
            *cp = test_q.q[test_q.deq_idx];
            if(test_q.deq_idx == test_q.enq_idx)
            {
                test_q.deq_idx = -1;
                test_q.enq_idx = -1;
                test_q.status = empty;
                return 0;
            }
            test_q.deq_idx += 1;
            if(test_q.deq_idx >= QUEUE_SIZE)
                test_q.deq_idx = 0;
            return 0;
            break;
        
        case full:
            *cp = test_q.q[test_q.deq_idx];
            test_q.deq_idx += 1;
            if ((test_q.deq_idx) >= QUEUE_SIZE)
                test_q.deq_idx = 0;
            test_q.status = partial;
            return 0;
            break;

    }
    return 0;
}

void q_init()
{
    test_q.status = empty;
    test_q.enq_idx = -1;
    test_q.deq_idx = -1;
    int i;
    for (i = 0; i < QUEUE_SIZE; i++)
        test_q.q[i] = '-';
}

void q_print()
{
    printf("\n-----\n");
    printf("\nQueue details:\n");
    printf("Size of queue: %d\n", QUEUE_SIZE);
    printf("Queue Status : %d\n", test_q.status);
    printf("Enqueue Index: %d\n", test_q.enq_idx);
    printf("Dequeue Index: %d\n", test_q.deq_idx);
    printf("Queue values:\n");
    int i;
    for(i = 0; i < QUEUE_SIZE; i++)
        printf("Value[%d] = %c\n", i, test_q.q[i]);
    printf("\n-----\n");
}
