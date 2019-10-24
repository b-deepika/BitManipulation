#include "common.h"


// Swap numbers
void swap(unsigned int *x, unsigned int *y)
{
    if (*x == *y) return;
    *x ^= *y;
    *y ^= *x;
    *x ^= *y;
}

void ReplaceBits(unsigned int *data, int position, int count, unsigned int maskBits)
{
    // verify input
    if( (NULL == data) || (position >= SIZE_OF_UINT32))
        return;
    
    unsigned int inData = *data;
    printf("Replaced %d bits at %d position:\n ", count, position);
    printf("Input ");
    DisplayBinary(inData);
    printf("Mask bits = 0x%x ", maskBits);
    DisplayBinary(maskBits);
    
    
    // Select the section of maskBits and set other bits as zero
    maskBits &= GETMASK(count);
 
    while(count--)
    {
        CLEAR_BIT(inData, position);
        inData |=  CHECK_BIT(maskBits, count) << position;
        position--;        
        if(0 == position)
            break;        
    }
    
    printf("Output ");
    DisplayBinary(inData); 
    *data = inData;    
    return;   
}

// Reverse Bits in integer
unsigned int ReverseBits(unsigned int data)
{   
    if(0x0 == data)
        return data; 
    
    unsigned int reverseData = 0x0;
    int size = SIZE_OF_UINT32 - 1;
    
    // Loop till data value is greater than zero
    while (data)
    {
        reverseData |= (data & 0x1);
        reverseData <<= 0x1; 
        data >>= 0x1;
        size--;
    }
    // Perform shift operation for pending bits
    reverseData <<= size;
    
    printf("Reversed ");
    DisplayBinary(reverseData);

    return reverseData;
}

// Invert/Toggle Bits in integer
unsigned int InvertBits(unsigned int data)
{   
    unsigned int invertedData = 0x0;
    int size = SIZE_OF_UINT32;
    
    // Loop till data value is greater than zero
    while (--size)
    {
        if( 0 == (data & (0x1 << size)))
        {
            invertedData |= (0x1 << size);
        }        
    }
    // Perform shift operation for pending bits
    invertedData <<= size;
    
    printf("Inverted ");
    DisplayBinary(invertedData);

    return invertedData;
}

