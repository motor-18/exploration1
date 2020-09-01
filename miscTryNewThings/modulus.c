#include <stdio.h>

int main()
{
    int x;
    int y;
    int z;
    int z2;
    printf("Enter a dividend:");
    scanf("%d", &x);
    printf("\n");
    printf("Enter a divisor:");
    scanf("%d", &y);
    printf("\n");
    z = x % y;
    z2 = x % 4;
    printf("The modulus result is: %d\n", z);
    printf("The mod-by-4 result is:  %d\n", z2);
}
