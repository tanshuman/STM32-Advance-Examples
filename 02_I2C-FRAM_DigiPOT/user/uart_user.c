#include "main.h"

uint8_t usart1_out(char* pbuffer)
{
  while(*pbuffer)
  {
    if(USART_GetFlagStatus(USART1, USART_FLAG_TXE) != RESET)
    {   
      USART_SendData(USART1, *pbuffer++); // Send Char
  //    GPIO_SetBits(GPIOE, GPIO_Pin_15);
    }
    while(USART_GetFlagStatus(USART1, USART_FLAG_TC) == RESET); // TC Transmission Complete Flag
 //   GPIO_ResetBits(GPIOE, GPIO_Pin_15);
  }
  return 1;
}

PUTCHAR_PROTOTYPE
{
  /* Place your implementation of fputc here */
  /* e.g. write a character to the USART */
  USART_SendData(USART1, (uint8_t) ch);

  /* Loop until the end of transmission */
  while (USART_GetFlagStatus(USART1, USART_FLAG_TC) == RESET)
  {}

  return ch;
}