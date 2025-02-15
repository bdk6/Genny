#include <avr/io.h>
#include <stdint.h>

uint8_t sineData[256] __attribute__((section(".mysine")));


void generate(void) __attribute__((section(".mycode")));
void gen2(void) __attribute__((section(".mycode")));

void gen2(void)
{
  asm("add r20,r25"::);
  asm("add r21,r26"::);
}

int main(int argc, char** argv)
{
  gen2();
}

uint8_t step = 0;

//void generate(void)
//{
//  while(1)
//  {
//    PORTB = sineData[step];
//    step++;
//  }
//}

