#include "common.h"

int isPowerof2(unsigned int x) {
    return (x != 0) && ((x & (x - 1)) == 0);
}

int generate_grey_code(unsigned int max) {
    unsigned int arr[max];
    unsigned int mask = 0;
    arr[0] = 0;
    arr[1] = 1;

    printf ("Grey code = %x \t %x \t", arr[0], arr[1]);
    unsigned int temp = 0;
    for (int i = 2; i < max;) {
        if (1 == isPowerof2(i)) {
            mask = i;
            for (int j = i-1; j >=0 ; j--) {
                arr[i] = arr[j];
                arr[i] = arr[i] | mask;
                printf("%x \t", arr[i]);
                i++;
            }
        } else {
            i++;
        }
    }
    printf("\n");
}

// Function to inc a bit - bitwise operation only
unsigned int inc_bitwise(unsigned int x) {
    if ((~0x0) == x) {
        printf ("underflow\n");
        return -1;
    }

    unsigned int y = 0x1;
    while (1) {
        x ^= y;
        if (x & y) {
            break;
        }
        y <<= 1;
    } 
    return x;
}

unsigned int dec_bitwise(unsigned int x) {
    if (0 == x) {
        printf ("underflow\n");
        return -1;
    }
    unsigned int y = 0x1;
    while (1) {
        x ^= y;
        if (0 == (x & y)) {
            break;
        }
        y <<= 1;
    } 
    return x;
}

unsigned int Increment(unsigned int inData)
{
    if((~0x0) == inData)
    {
        printf("Overflow \n");
    }
    unsigned int incr = 0x1;
    unsigned int carry = 0;
	
    while(incr)
    {
	carry = inData & incr;
     	inData = inData ^ incr;
        incr = carry << 0x1;
    }
	
    printf("Incremented ");	
    DisplayBinary(inData);
	    
    return inData;
}


unsigned int CircularRightShift(unsigned int inData, int count)
{
    unsigned int data = 0x0;
    
    printf("Circular Right Shift: ");
    while(count--)
    {
        data = (inData & 0x1);
        data <<= (SIZE_OF_UINT32-1);
        inData >>= 1;        
        inData |= data;
    }
    DisplayBinary(inData);
    return inData;
}


unsigned int CircularLeftShift(unsigned int inData, int count)
{
    unsigned int data = 0x0;
    
    printf("Circular Left Shift: ");
    while(count--)
    {
        data = CHECK_BIT(inData, (SIZE_OF_UINT32-1));
        inData <<= 1;        
        inData |= (data & 0x1);
    }
    DisplayBinary(inData);
    return inData;
    
}
