#include "common.h"

void DisplayBinary(unsigned int data)
{
    printf("Data = 0x%x \t \t ", data);
	for(int i = (SIZE_OF_UINT32-1); i >= 0; i--)
	{
		if(data & (0x1 << i))
			printf("1");
		else
			printf("0");
        
        if(0 == (i%4))
            printf(" ");
	}
    printf("\n");
}