#include "main.h"

int main()
{
  RCC_Configurations();
  GPIO_Configurations();
  ADC_Configurations();
  DMA_Configurations();
  USART_Configurations();
  while(1)
  {
   printf("SOLAR V = %d, BATT V = %d, DPAU = %d, TEMP = %d, VBAT = %d\r\n", read_adc(2), read_adc(3), read_adc(4), read_adc(0),read_adc(1));
   for(int i = 0; i<=500000; i++) ;
 
  }
}