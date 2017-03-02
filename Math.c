#include "common.h"

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