#include "main.h"

void USART_Configurations(void)
{
  USART_InitTypeDef USART_Config;

  USART_Config.USART_BaudRate = 9600;
  USART_Config.USART_WordLength = USART_WordLength_8b;
  USART_Config.USART_StopBits = USART_StopBits_1;
  USART_Config.USART_Parity = USART_Parity_No;
  USART_Config.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
  USART_Config.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;

  USART_Init(USART1, &USART_Config);
  USART_Cmd(USART1, ENABLE);
}

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