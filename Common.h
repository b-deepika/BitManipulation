#include <stdio.h>
#include <stddef.h>

#define SIZE_OF_UINT32    32

// Get MASK of n bits : Eg. 3 bits gives 0x7
#define GETMASK(n) ((1 << n) - 1)

// Set Bit at x position
#define SET_BIT(data, x) ((data) |= (0x1 << (x)))

// Clear Bit at x position
#define CLEAR_BIT(data, x) ((data) &= ~(0x1 << (x)))

// Toggle Bit at x position
#define TOGGLE_BIT(data, x) ((data) ^= (0x1 << (x)))

// CHECK Bit at x position
#define CHECK_BIT(data, x) ((data) >> (x) & 0x1)


// List of all functions
// DisplayBinary.c
void DisplayBinary(unsigned int data);

// CountBits.c
int TrailingZeroCounter(unsigned int data);
int CountBits(unsigned int data);

//ModifyBits.c
unsigned int ReverseBits(unsigned int data);
unsigned int InvertBits(unsigned int data);
void ReplaceBits(unsigned int *data, int position, int count, unsigned int maskBits);

// Math.c
unsigned int Increment(unsigned int inData);
unsigned int CircularRightShift(unsigned int inData, int count);
unsigned int CircularLeftShift(unsigned int inData, int count);
