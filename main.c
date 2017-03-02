#include "common.h"

int main(int argc, char **argv)
{
    unsigned int data;
    
    data = 0x12345678;
    printf("Input ");    
    DisplayBinary(data);    
    printf("\n\n");   
    
    ReverseBits(data);
    TrailingZeroCounter(data);
    CountBits(data);
    Increment(data);    
    InvertBits(data);
    ReplaceBits(&data, 15, 5, 0x365); 
    data = CircularRightShift(data, 13);
    CircularLeftShift(data, 1);
 
    return 0;
}

