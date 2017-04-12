#include "main.h"
uint8_t digi_1 = 0;
uint8_t digi_0 = 255;

int uhADCxConvertedValue = 0;
float uwADCxConvertedVoltage = 0;

int main()
{
  RCC_Configurations();
  GPIO_Configurations();
  USART_Configurations();
  I2C_Configurations();
  ADC_Configurations();
  float write_data[2] = {2.67, 9.52};
  float read_data[2];
  USART_SendData(USART1, 'A');
  
  while(1)
  {
    if(I2C1_WriteBuffer((uint8_t*)&write_data, FRAM_Address, 2, 0x0F,2 * sizeof(float)) == 0)
      USART_SendData(USART1, 'A');
    
    if(I2C1_ReadBuffer((uint8_t*)&read_data, FRAM_Address, 2, 0x0F,2 * sizeof(float)) == 0)
      USART_SendData(USART1, 'B');
    
    
      if(write_data[0] == read_data[0] && write_data[1] == read_data[1]) ; 
        //USART_SendData(USART1, 'T');
      else
        USART_SendData(USART1, 'C');
    for(int i=0; i<=50000; i++) ;
    
    ext_digipot_test();
    
  }
}

void read_adc()
{
  uhADCxConvertedValue = readADC1();
  uwADCxConvertedVoltage = uhADCxConvertedValue/24.5; 
}

int readADC1()
{
  ADC_StartOfConversion(ADC1);
  // Wait until conversion completion
  while(ADC_GetFlagStatus(ADC1, ADC_FLAG_EOC) == RESET) ;
  
  ADC_StopOfConversion(ADC1);
  // Get the conversion value
  return ADC_GetConversionValue(ADC1);
}

void ext_digipot_test()
{
  if(I2C1_WriteBuffer((uint8_t*)&digi_1, Digi_1_Address, 1, 0x00, sizeof(digi_1)) == 0)
   USART_SendData(USART1, 'K');
  for(int i=0; i<=500000; i++) ;
  if(I2C1_WriteBuffer((uint8_t*)&digi_0, Digi_0_Address, 1, 0x00, sizeof(digi_1)) == 0)
   USART_SendData(USART1, 'L');
  
  read_adc();
  digi_1++;
  digi_0--;
  
  printf("\r\nDigi_1 = %d, ADC_0 = %d, V = %f", digi_1, uhADCxConvertedValue, uwADCxConvertedVoltage);
  
}