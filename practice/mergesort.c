/*
 * To practice simple sort code using C
 *
 * The input strings are in global memory. 
 *
 * This is a "naive" implementation.
 *
 * */


#include <stdio.h>
#include <stdlib.h>

#define DEBUG_PRINT 0

typedef struct {
    int len;
    int *data;
} arr_t;

int a1_data[] = {2, 5, 5, 5};
int a2_data[] = {1, 5, 5, 5};

arr_t a1 = {4, a1_data};
arr_t a2 = {4, a2_data};

arr_t* merge (arr_t* a1, arr_t* a2) {
    if (a1 == NULL || a2 == NULL) {
        printf("One or more null inputs\n");
        return NULL;
    }

    arr_t *ans = (arr_t*) malloc(sizeof(arr_t));
    ans->len = a1->len + a2->len;
    ans->data = (int*) malloc(sizeof(int) * ans->len);

    int p1 = 0;
    int p2 = 0;
    int p = 0;
    while (p1 < a1->len && p2 < a2->len) {
        if (a1->data[p1] < a2->data[p2]) {
            ans->data[p] = a1->data[p1];
            p1++; p++;
        } else {
            ans->data[p] = a2->data[p2];
            p2++; p++;
        }
#if DEBUG_PRINT
        printf("p1 = %d; p2 = %d; p = %d\n", p1, p2, p);
#endif
    }

    int px;
    int *xdata;
    int xlen;
    if (p1 >= a1->len && p2 >= a2->len) {
        return ans;
    } else if (p1 >= a1->len) {
        xlen = a2->len;
        xdata = a2->data;
        px = p2;
    } else {
        xlen = a1->len;
        xdata = a1->data;
        px = p1;
    }

    for (; px < xlen; px++, p++) {
        ans->data[p] = xdata[px];
    }

    return ans;
}

void main() {
    printf("The 2 input arrays are: \n");
    printf("Array 1: ");
    for (int i = 0; i < a1.len; i++) {
        printf("%d, ", a1.data[i]);
    }
    printf("\n");
    printf("Array 2: ");
    for (int i = 0; i < a2.len; i++) {
        printf("%d, ", a2.data[i]);
    }
    printf("\n");

    arr_t *ans = merge(&a1, &a2);

    printf("The final array is: \n");
    printf("Merged: ");
    for (int i = 0; i < ans->len; i++) {
        printf("%d, ", ans->data[i]);
    }
    printf("\n");
}
