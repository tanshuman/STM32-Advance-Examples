#include "main.h"

uint8_t Clk_Config(void)
{
  // RCC_DeInit(); // DeInit
  
  // Enable 48Mhz Internal Clock
  RCC->CR2 |= RCC_CR2_HSI48ON; 
  while(RCC->CR2&0x2 != 0x2) ; // Wait for HSI48 RDY FLag to SET   //  while(RCC_GetFlagStatus(RCC_FLAG_HSI48RDY)) ; 
  
  // Select HSI48 for PLLSRC - PLL Source
  RCC_PREDIV1Config(RCC_PREDIV1_Div4);  // Division Factor for PLL
  RCC_PLLConfig(RCC_PLLSource_HSI48, RCC_PLLMul_2); //Selecting PLL Source and Multiplication Factor
  RCC_PLLCmd(ENABLE); // Enable PLL Clock
  while(!RCC_GetFlagStatus(RCC_FLAG_PLLRDY)) ; // Wait for PLL to Ready
  
  // SELECT Clock Source for SYSCLK
  RCC_SYSCLKConfig(RCC_SYSCLKSource_PLLCLK); 
  while(RCC_GetSYSCLKSource() != 0x08) ; // Wait for SYSCLK to configure
  
  /*
  HSI48 -> Enabled -> 48Mhz
  PLL SRC -> HSI48
  PLL Div -> 4    -> 12Mhz
  PLL Mult -> 2    -> 24Mhz
  SYSCLK -> PLL OUTPUT  
  
  Final Freq of SYSCLK -> 24Mhz //Multiple way to achieve this freq
  */
  
  // Setting clock div factor from SYSCLK to HCLK (AHB, core, memory, DMA etc)
  RCC_HCLKConfig(RCC_SYSCLK_Div1); // Configures the AHB clock (HCLK) -> FREQ -> 12Mhz
  RCC_PCLKConfig(RCC_HCLK_Div1); // Configures the APB clock (PCLK) -> 12Mhz
  
  /*
  Since APB1 Prescaler is 1, TIM clock freq will equal to PCLK -> 24Mhz
  See Page 104 of Ref Manual (STM32F071VB)
  */
  
  // Setting ADC Clock Source as HSI14
  RCC_ADCCLKConfig(RCC_ADCCLK_HSI14);
  
  // Setting USARTs Clock Source
  RCC_USARTCLKConfig(RCC_USART1CLK_SYSCLK);
  RCC_USARTCLKConfig(RCC_USART2CLK_HSI);
  
  // Setting USB Clock Source
  RCC_USBCLKConfig(RCC_USBCLK_HSI48);
  
  return 1;
}

uint8_t RCC_Config(void)
{
  // PORT A Clock Enable
  RCC_AHBPeriphClockCmd(RCC_AHBPeriph_GPIOA, ENABLE);
  // PORT E Enable
  RCC_AHBPeriphClockCmd(RCC_AHBPeriph_GPIOE, ENABLE);  
  // TIM1 & TIM2 Clock  Enable
  RCC_APB2PeriphClockCmd(RCC_APB2Periph_TIM1, ENABLE);
  RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM2, ENABLE);
  
  return 1;
}

uint8_t GPIO_Config(void)
{
  
  GPIO_InitTypeDef GPIO_Config;
  // Pin to check clock output of PA8 - KEY_C2
  GPIO_Config.GPIO_Pin = GPIO_Pin_8;
  GPIO_Config.GPIO_Mode = GPIO_Mode_AF;
  GPIO_Config.GPIO_Speed = GPIO_Speed_Level_3;
  GPIO_Config.GPIO_OType = GPIO_OType_PP;
  GPIO_Config.GPIO_PuPd = GPIO_PuPd_UP;
  GPIO_Init(GPIOA, &GPIO_Config);  
  GPIO_PinAFConfig(GPIOA, GPIO_PinSource8, GPIO_AF_0); //Setting PIN 8 as AF
  
  RCC_MCOConfig(RCC_MCOSource_SYSCLK, RCC_MCOPrescaler_1); // SYSCLK output to MCO pin PA8 - 48Mhz with prescaler 1
  
  GPIO_Config.GPIO_Pin = GPIO_Pin_8 | GPIO_Pin_9 | GPIO_Pin_10 | GPIO_Pin_11;
  
  GPIO_Init(GPIOE, &GPIO_Config);
  
  //For Testing Relay
  GPIO_Config.GPIO_Pin = GPIO_Pin_7;
  GPIO_Config.GPIO_Mode = GPIO_Mode_OUT;
  GPIO_Init(GPIOE, &GPIO_Config);
  
  GPIO_PinAFConfig(GPIOE, GPIO_PinSource8, GPIO_AF_0); 
  GPIO_PinAFConfig(GPIOE, GPIO_PinSource9, GPIO_AF_0);
  GPIO_PinAFConfig(GPIOE, GPIO_PinSource10, GPIO_AF_0);
  GPIO_PinAFConfig(GPIOE, GPIO_PinSource11, GPIO_AF_0);
  
  return 1;
}

uint8_t TIM_Config(void)
{
  TIM_TimeBaseInitTypeDef TIM_Config;
  
  TIM_Config.TIM_Prescaler = 0x0; // Clock -> 12Mhz 
  TIM_Config.TIM_CounterMode = TIM_CounterMode_Up; // Up Counting
  TIM_Config.TIM_Period = 2400; // Counter Max value 10Khz
  TIM_Config.TIM_ClockDivision = TIM_CKD_DIV1; // Clock Div = 1
  TIM_Config.TIM_RepetitionCounter = 0x00; // Again Start from 0
  TIM_TimeBaseInit(TIM1, &TIM_Config);
  
  TIM_OCInitTypeDef TIM_OCInitStructure;
  
  /* PWM1 Mode configuration: Channel1 */
  TIM_OCInitStructure.TIM_OCMode = TIM_OCMode_PWM1;
  TIM_OCInitStructure.TIM_OutputState = TIM_OutputState_Enable;
  TIM_OCInitStructure.TIM_OutputNState = TIM_OutputNState_Enable;
  TIM_OCInitStructure.TIM_Pulse = 0;
  TIM_OCInitStructure.TIM_OCPolarity = TIM_OCPolarity_High;
  TIM_OCInitStructure.TIM_OCNPolarity = TIM_OCNPolarity_Low;
  TIM_OCInitStructure.TIM_OCIdleState = TIM_OCIdleState_Reset;
  TIM_OCInitStructure.TIM_OCNIdleState = TIM_OCIdleState_Reset;
  
  TIM_OC1Init(TIM1, &TIM_OCInitStructure);
  TIM_OC1PreloadConfig(TIM1, TIM_OCPreload_Enable);
  
  TIM_OC2Init(TIM1, &TIM_OCInitStructure);
  TIM_OC2PreloadConfig(TIM1, TIM_OCPreload_Enable);
  
  
  TIM_ITConfig(TIM1, TIM_IT_Update, ENABLE);
  
  TIM_Cmd(TIM1, ENABLE);
  
  TIM_CtrlPWMOutputs(TIM1, ENABLE);
  
  return 1;
}

uint8_t NVIC_Config(void)
{
  NVIC_InitTypeDef NVIC_InitStructure;
  /* Enable the TIM1 Trigger and commutation interrupt */
  NVIC_InitStructure.NVIC_IRQChannel = TIM1_BRK_UP_TRG_COM_IRQn;
  NVIC_InitStructure.NVIC_IRQChannelPriority = 0;
  NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
  NVIC_Init(&NVIC_InitStructure);
  return 1;
}

