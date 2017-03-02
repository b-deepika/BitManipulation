#include "common.h"

// Count Trailing Zero Bits
int TrailingZeroCounter(unsigned int data)
{
    int count  = 0;
    while(data)
    {
        if(!(data & 0x1))
        {
            count++;
        }
        else
        {
            break;
        }
        data >>= 1;
   }
   printf("Trailing Zero's = %d\n", count);
   
   return count;   
}

#include "common.h"

// Count Bits - 1
int CountBits(unsigned int data)
{
    int count  = 0;
    while(data)
    {
        if(data & 0x1)
        {
            count++;
        }
        data >>= 1;
   }
   printf("Number of 1's = %d\n", count);
   
   return count;   
}

