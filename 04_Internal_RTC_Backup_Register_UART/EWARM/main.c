
#include"stm32f10x.h"
#include "manual_config.h"

/**************************************************************************************/
extern uint16_t Data;


/**************************************************************************************/
void configurations(void);
/**************************************************************************************/

int main(void)
{
  configurations();
  GPIO_SetBits(GPIOE, GPIO_Pin_15);
  OutString("\r\n Welcome to *** Controller Card F107VC\r\n");
  
  while(1) // Don't want to exit
  {
    //Code is running in background, check manual_config.c
  }
}

void configurations()
{
  RCC_Configuration();
  GPIO_Configuration();
  USART_Configuration();
  NVIC_Configuration(); 
  RTC_Prim_Config();
}