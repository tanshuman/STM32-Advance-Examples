
#include"stm32f10x.h"
/**************************************************************************************/
uint16_t Data = '0';
void RCC_Configuration(void)
{
  /* --------------------------- System Clocks Configuration -----------------*/
  /* GPIO clock enable */
  RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA | RCC_APB2Periph_GPIOC | RCC_APB2Periph_GPIOD | RCC_APB2Periph_GPIOE | RCC_APB2Periph_AFIO, ENABLE); 
  /* UART4/5/2 clock enable */
  RCC_APB1PeriphClockCmd(RCC_APB1Periph_UART4 | RCC_APB1Periph_UART5 | RCC_APB1Periph_USART2, ENABLE); 
}
/**************************************************************************************/
void GPIO_Configuration(void)
{
  GPIO_InitTypeDef GPIO_InitStructure;
  /*-------------------------- GPIO Configuration ----------------------------*/
  
  /*---------------------------- UART PIN Config -----------------------------*/
  GPIO_InitStructure.GPIO_Pin = GPIO_Pin_10 | GPIO_Pin_11 | GPIO_Pin_12; // PC.10 UART4_TX | PC.11 UART4_RX | UART5_TX //U14, U13
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_10MHz;
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
  GPIO_Init(GPIOC, &GPIO_InitStructure);
  
  GPIO_InitStructure.GPIO_Pin = GPIO_Pin_2 | GPIO_Pin_5 | GPIO_Pin_6; // PD.2 UART5_RX, PD.5 USART2_TX ALT, PD.6 USART2_RX ALT //U13, U12
  GPIO_Init(GPIOD, &GPIO_InitStructure);
  
  /*---------------------------- Remap the USART -----------------------------*/
//  GPIO_InitStructure.GPIO_Pin = GPIO_Pin_2 | GPIO_Pin_3; // PA.2 USART2_TX | PA.3 USART2_RX //U12
//  GPIO_Init(GPIOA, &GPIO_InitStructure);
  GPIO_PinRemapConfig(GPIO_Remap_USART2, ENABLE);
  
  
  /*--------------------- Added Later - See ChangeLog (Removed)---------------*/
  //  GPIO_InitStructure.GPIO_Pin = GPIO_Pin_11; //PC.11 UART4_RX
  //  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING;
  //  GPIO_Init(GPIOC, &GPIO_InitStructure);
  /*------------------------------- To make DE pin HIGH ----------------------*/
  GPIO_InitStructure.GPIO_Pin = GPIO_Pin_6 | GPIO_Pin_7 | GPIO_Pin_8; //PC.6,7,8 - To Enable U12, U13, U14
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_10MHz;
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
  GPIO_Init(GPIOC, &GPIO_InitStructure);
  /*-------------------------- GPIO Configuration ----------------------------*/
  GPIO_InitStructure.GPIO_Pin = GPIO_Pin_15; //LED Pin Added Later
  GPIO_Init(GPIOE, &GPIO_InitStructure);
}

/**************************************************************************************/

void USART_Configuration(void)
{
  USART_InitTypeDef USART_InitStructure;
  /* USARTx configuration ------------------------------------------------------*/
  /* USARTx configured as follow:
  - BaudRate = 115200 baud
  - Word Length = 8 Bits
  - One Stop Bit
  - No parity
  - Hardware flow control disabled (RTS and CTS signals)
  - Receive and transmit enabled
  */
  USART_InitStructure.USART_BaudRate = 115200;
  USART_InitStructure.USART_WordLength = USART_WordLength_8b;
  USART_InitStructure.USART_StopBits = USART_StopBits_1;
  USART_InitStructure.USART_Parity = USART_Parity_No;
  USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
  USART_InitStructure.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;
  USART_Init(UART4, &USART_InitStructure);
  USART_Init(UART5, &USART_InitStructure);
  USART_Init(USART2, &USART_InitStructure);
  
  USART_ITConfig(UART4, USART_IT_RXNE, ENABLE); //To activate interupt for UART4 - Receive
  USART_ITConfig(UART5, USART_IT_RXNE, ENABLE);
  USART_ITConfig(USART2, USART_IT_RXNE, ENABLE);
 // USART_ITConfig(UART4, USART_IT_TXE, ENABLE); //To activate interupt for UART4 - Transmit - Not working
  USART_Cmd(UART4, ENABLE);
  USART_Cmd(UART5, ENABLE);
  USART_Cmd(USART2, ENABLE);
}

/**************************************************************************************/

void NVIC_Configuration(void)
{
  NVIC_InitTypeDef NVIC_InitStructure;
  
  /* Configure the NVIC Preemption Priority Bits */  
  NVIC_PriorityGroupConfig(NVIC_PriorityGroup_0); //read the @brief at NVIC_PriorityGroupConfig to know more
  
  /* Enable the UART4 Interrupt */
  NVIC_InitStructure.NVIC_IRQChannel = UART4_IRQn;
  //  NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0;// -> Not Req. as NVIC_Priority Group is 0;
  NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0;
  NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
  NVIC_Init(&NVIC_InitStructure);
  
  NVIC_InitStructure.NVIC_IRQChannel = UART5_IRQn;
  //  NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0;// -> Not Req. as NVIC_Priority Group is 0;
  NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0;
  NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
  NVIC_Init(&NVIC_InitStructure);
  
   NVIC_InitStructure.NVIC_IRQChannel = USART2_IRQn;
  //  NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0;// -> Not Req. as NVIC_Priority Group is 0;
  NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0;
  NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
  NVIC_Init(&NVIC_InitStructure);
}

/**************************************************************************************/

void OutString(char *s)
{
  while(*s)
  {
    USART_SendData(USART2, *s); // Send Char
    while(USART_GetFlagStatus(USART2, USART_FLAG_TC) == RESET); // TC Transmission Complete Flag
    USART_SendData(UART5, *s); // Send Char
    while(USART_GetFlagStatus(UART5, USART_FLAG_TC) == RESET); // TC Transmission Complete Flag
    USART_SendData(UART4, *s++); // Send Char
    while(USART_GetFlagStatus(UART4, USART_FLAG_TC) == RESET); // TC Transmission Complete Flag
  }
}

/**************************************************************************************/

int main(void)
{
  RCC_Configuration();
  GPIO_Configuration();
  USART_Configuration();
  NVIC_Configuration();
  
  GPIO_SetBits(GPIOE, GPIO_Pin_15);
  for(int i=0; i<=500000; i++);
  
  GPIO_SetBits(GPIOC, GPIO_Pin_8); //To Enable U14
  GPIO_SetBits(GPIOC, GPIO_Pin_7); //To Enable U13
  GPIO_SetBits(GPIOC, GPIO_Pin_6); //To Enable U12
 // OutString("\r\n\r\nWelcome to GOA Controller Card F107VC\r\n");
  for(int i=0; i<=500000; i++);
  
  while(1) // Don't want to exit
  {
    if(USART_GetFlagStatus(UART4, USART_FLAG_TXE) != RESET)
    {   
      GPIO_ResetBits(GPIOE, GPIO_Pin_15);
      for(int i=0; i<=500000; i++);
      USART_SendData(UART4, 'K');
      USART_SendData(UART5, 'K');
      USART_SendData(USART2, 'K');
    }
    if(Data == 'K')
    {
      for(int j=0; j<5; j++)
      {
        GPIO_SetBits(GPIOE, GPIO_Pin_15);
        for(int i=0; i<=5000000; i++);
        GPIO_ResetBits(GPIOE, GPIO_Pin_15);
        for(int i=0; i<=5000000; i++);
      }
      Data = '0';
    }
    
  }
}
