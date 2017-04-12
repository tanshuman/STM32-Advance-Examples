#include "manual_config.h"
uint16_t Data = '0';

#ifdef __GNUC__
/* With GCC/RAISONANCE, small printf (option LD Linker->Libraries->Small printf
   set to 'Yes') calls __io_putchar() */
#define PUTCHAR_PROTOTYPE int __io_putchar(int ch)
#else
#define PUTCHAR_PROTOTYPE int fputc(int ch, FILE *f)
#endif /* __GNUC__ */


void RCC_Configuration(void)
{
  /* --------------------------- System Clocks Configuration -----------------*/
  /* GPIO clock enable */
  RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOC | RCC_APB2Periph_GPIOE, ENABLE); 
  /* USART4 clock enable */
  RCC_APB1PeriphClockCmd(RCC_APB1Periph_UART4, ENABLE); 
}


/**************************************************************************************/
void GPIO_Configuration(void)
{
  GPIO_InitTypeDef GPIO_InitStructure;
  /*-------------------------- GPIO Configuration ----------------------------*/
  GPIO_InitStructure.GPIO_Pin = GPIO_Pin_10 | GPIO_Pin_11; // PC.10 UART4_TX | PC.11 UART4_RX
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_2MHz;
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
  GPIO_Init(GPIOC, &GPIO_InitStructure);
  /*--------------------- Added Later - See ChangeLog (Removed)---------------*/
  //  GPIO_InitStructure.GPIO_Pin = GPIO_Pin_11; //PC.11 UART4_RX
  //  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING;
  //  GPIO_Init(GPIOC, &GPIO_InitStructure);
  /*------------------------------- To make DE pin HIGH ----------------------*/
  GPIO_InitStructure.GPIO_Pin = GPIO_Pin_8; //PC.8 - To Enable U14
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
  GPIO_Init(GPIOC, &GPIO_InitStructure);
  GPIO_SetBits(GPIOC, GPIO_Pin_8); //To Enable U14
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
//  USART_ITConfig(UART4, USART_IT_RXNE, ENABLE); //To activate interupt for UART4 - Receive
  // USART_ITConfig(UART4, USART_IT_TXE, ENABLE); //To activate interupt for UART4 - Transmit - Not working
  USART_Cmd(UART4, ENABLE);
}




/**************************************************************************************/
void NVIC_Configuration(void)
{
  NVIC_InitTypeDef NVIC_InitStructure;
  
  /* Configure the NVIC Preemption Priority Bits */  
  NVIC_PriorityGroupConfig(NVIC_PriorityGroup_1); //read the @brief at NVIC_PriorityGroupConfig to know more
  
  /* Enable the UART4 Interrupt */
//  NVIC_InitStructure.NVIC_IRQChannel = UART4_IRQn;
//  NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 1;// -> Not Req. as NVIC_Priority Group is 0;
//  NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0;
//  NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
//  NVIC_Init(&NVIC_InitStructure);
//  
  /* Enable the RTC Interrupt */
  NVIC_InitStructure.NVIC_IRQChannel = RTC_IRQn;
  NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0;
  NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0;
  NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
  NVIC_Init(&NVIC_InitStructure);
}






/**************************************************************************************/
void RTC_Prim_Config(void)
{
  if (BKP_ReadBackupRegister(BKP_DR1) != 0xA5A1)
  {
    /* Backup data register value is not correct or not yet programmed (when
       the first time the program is executed) */

    printf("\r\n\n RTC not yet configured....");

    /* RTC Configuration */
    RTC_Configuration();

    printf("\r\n RTC configured....");

    /* Adjust time by values entered by the user on the hyperterminal */
    Time_Adjust();

    BKP_WriteBackupRegister(BKP_DR1, 0xA5A1);
  }
   
  else
  {
    /* Check if the Power On Reset flag is set */
    if (RCC_GetFlagStatus(RCC_FLAG_PORRST) != RESET)
      printf("\r\n\n Power On Reset occurred....");
    /* Check if the Pin Reset flag is set */
    else if (RCC_GetFlagStatus(RCC_FLAG_PINRST) != RESET)
      printf("\r\n\n External Reset occurred....");

    printf("\r\n No need to configure RTC....");
    /* Wait for RTC registers synchronization */
    RTC_WaitForSynchro();

    /* Enable the RTC Second */
    RTC_ITConfig(RTC_IT_SEC, ENABLE);
    /* Wait until last write operation on RTC registers has finished */
    RTC_WaitForLastTask();
  }

  /* Clear reset flags */
  RCC_ClearFlag();
}


void RTC_Configuration(void)
{
  /* Enable PWR and BKP clocks */
  RCC_APB1PeriphClockCmd(RCC_APB1Periph_PWR | RCC_APB1Periph_BKP, ENABLE);

  /* Allow access to BKP Domain */
  PWR_BackupAccessCmd(ENABLE);
  
 /* Reset Backup Domain */
  BKP_DeInit();

  /* Enable LSE */
  RCC_LSEConfig(RCC_LSE_ON);
  /* Wait till LSE is ready */
  while (RCC_GetFlagStatus(RCC_FLAG_LSERDY) == RESET) ;

  /* Select LSE as RTC Clock Source */
  RCC_RTCCLKConfig(RCC_RTCCLKSource_LSE);

  /* Enable RTC Clock */
  RCC_RTCCLKCmd(ENABLE);

  /* Wait for RTC registers synchronization */
  RTC_WaitForSynchro();

  /* Wait until last write operation on RTC registers has finished */
  RTC_WaitForLastTask();

  /* Enable the RTC Second */
  RTC_ITConfig(RTC_IT_SEC, ENABLE);

  /* Wait until last write operation on RTC registers has finished */
  RTC_WaitForLastTask();

  /* Set RTC prescaler: set RTC period to 1sec */
  RTC_SetPrescaler(32767); /* RTC period = RTCCLK/RTC_PR = (32.768 KHz)/(32767+1) */

  /* Wait until last write operation on RTC registers has finished */
  RTC_WaitForLastTask();
}









/*************************************User Defined Function************************************************/

/*----------------------- To Send String Using UART4 -------------------------*/
void OutString(char *s)
{
  while(*s)
  {
    if(USART_GetFlagStatus(UART4, USART_FLAG_TXE) != RESET)
    {   
      USART_SendData(UART4, *s++); // Send Char
  //    GPIO_SetBits(GPIOE, GPIO_Pin_15);
    }
    while(USART_GetFlagStatus(UART4, USART_FLAG_TC) == RESET); // TC Transmission Complete Flag
 //   GPIO_ResetBits(GPIOE, GPIO_Pin_15);
  }
}
PUTCHAR_PROTOTYPE
{
  /* Place your implementation of fputc here */
  /* e.g. write a character to the USART */
  USART_SendData(UART4, (uint8_t) ch);

  /* Loop until the end of transmission */
  while (USART_GetFlagStatus(UART4, USART_FLAG_TC) == RESET)
  {}

  return ch;
}
/*--------------------------- RTC - User Functions ---------------------------*/
void Time_Display(uint32_t TimeVar)
{
  uint32_t THH = 0, TMM = 0, TSS = 0;
  
  /* Reset RTC Counter when Time is 23:59:59 */
  if (RTC_GetCounter() == 0x0001517F)
  {
     RTC_SetCounter(0x0);
     /* Wait until last write operation on RTC registers has finished */
     RTC_WaitForLastTask();
  }
  
  /* Compute  hours */
  THH = TimeVar / 3600;
  /* Compute minutes */
  TMM = (TimeVar % 3600) / 60;
  /* Compute seconds */
  TSS = (TimeVar % 3600) % 60;

  printf("Time: %0.2d:%0.2d:%0.2d\r", THH, TMM, TSS);
}


/**
  * @brief  Adjusts time.
  * @param  None
  * @retval None
  */
void Time_Adjust(void)
{
  /* Wait until last write operation on RTC registers has finished */
  RTC_WaitForLastTask();
  /* Change the current time */
  RTC_SetCounter(Time_Regulate());
  /* Wait until last write operation on RTC registers has finished */
  RTC_WaitForLastTask();
}

/**
  * @brief  Returns the time entered by user, using Hyperterminal.
  * @param  None
  * @retval Current time RTC counter value
  */
uint32_t Time_Regulate(void)
{
  uint32_t Tmp_HH = 0xFF, Tmp_MM = 0xFF, Tmp_SS = 0xFF;

  printf("\r\n==============Time Settings=====================================");
  printf("\r\n  Please Set Hours");

  while (Tmp_HH == 0xFF)
  {
    Tmp_HH = USART_Scanf(23);
  }
  printf(":  %d", Tmp_HH);
  printf("\r\n  Please Set Minutes");
  while (Tmp_MM == 0xFF)
  {
    Tmp_MM = USART_Scanf(59);
  }
  printf(":  %d", Tmp_MM);
  printf("\r\n  Please Set Seconds");
  while (Tmp_SS == 0xFF)
  {
    Tmp_SS = USART_Scanf(59);
  }
  printf(":  %d", Tmp_SS);

  /* Return the value to store in RTC counter register */
  return((Tmp_HH*3600 + Tmp_MM*60 + Tmp_SS));
}

uint8_t USART_Scanf(uint32_t value)
{
  uint32_t index = 0;
  uint32_t tmp[2] = {0, 0};

  while (index < 2)
  {
    /* Loop until RXNE = 1 */
    while (USART_GetFlagStatus(UART4, USART_FLAG_RXNE) == RESET)
    {}
    tmp[index++] = (USART_ReceiveData(UART4));
    if ((tmp[index - 1] < 0x30) || (tmp[index - 1] > 0x39))
    {
      printf("\n\rPlease enter valid number between 0 and 9");
      index--;
    }
  }
  /* Calculate the Corresponding value */
  index = (tmp[1] - 0x30) + ((tmp[0] - 0x30) * 10);
  /* Checks */
  if (index > value)
  {
    printf("\n\rPlease enter valid number between 0 and %d", value);
    return 0xFF;
  }
  return index;
}

