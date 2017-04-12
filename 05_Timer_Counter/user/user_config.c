#include "main.h"

uint8_t Clk_Config(void)
{
 // RCC_DeInit(); // DeInit
  
  // Enable 48Mhz Internal Clock
  RCC->CR2 |= RCC_CR2_HSI48ON; 
  while(RCC->CR2&0x2 != 0x2) ; // Wait for HSI48 RDY FLag to SET   //  while(RCC_GetFlagStatus(RCC_FLAG_HSI48RDY)) ; 
  
  // Select HSI48 for PLLSRC - PLL Source
  RCC_PREDIV1Config(RCC_PREDIV1_Div8);  // Division Factor for PLL
  RCC_PLLConfig(RCC_PLLSource_HSI48, RCC_PLLMul_2); //Selecting PLL Source and Multiplication Factor
  RCC_PLLCmd(ENABLE); // Enable PLL Clock
  while(!RCC_GetFlagStatus(RCC_FLAG_PLLRDY)) ; // Wait for PLL to Ready
  
  // SELECT Clock Source for SYSCLK
  RCC_SYSCLKConfig(RCC_SYSCLKSource_PLLCLK); 
  while(RCC_GetSYSCLKSource() != 0x08) ; // Wait for SYSCLK to configure
  
  /*
  HSI48 -> Enabled -> 48Mhz
  PLL SRC -> HSI48
  PLL Div -> 8     -> 6Mhz
  PLL Mult -> 2    -> 12Mhz
  SYSCLK -> PLL OUTPUT  
  
  Final Freq of SYSCLK -> 12Mhz //Multiple way to achieve this freq
  */
  
  // Setting clock div factor from SYSCLK to HCLK (AHB, core, memory, DMA etc)
  RCC_HCLKConfig(RCC_SYSCLK_Div2); // Configures the AHB clock (HCLK) -> FREQ -> 6Mhz
  RCC_PCLKConfig(RCC_HCLK_Div1); // Configures the APB clock (PCLK) -> 6Mhz
  
  /*
  Since APB1 Prescaler is 1, TIM clock freq will equal to PCLK -> 6Mhz
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
  
  // TIM1 Clock  Enable
  RCC_APB2PeriphClockCmd(RCC_APB2Periph_TIM1, ENABLE);
  
  return 1;
}

uint8_t GPIO_Config(void)
{
  // deInit
  GPIO_DeInit(GPIOA);
  
  GPIO_InitTypeDef GPIO_Config;
  // Pin to check clock output of PA8 - KEY_C2
  GPIO_Config.GPIO_Pin = GPIO_Pin_8;
  GPIO_Config.GPIO_Mode = GPIO_Mode_AF;
  GPIO_Config.GPIO_Speed = GPIO_Speed_Level_3;
  GPIO_Config.GPIO_OType = GPIO_OType_PP;
  GPIO_Config.GPIO_PuPd = GPIO_PuPd_DOWN;
  GPIO_Init(GPIOA, &GPIO_Config);  
  GPIO_PinAFConfig(GPIOA, GPIO_PinSource8, GPIO_AF_0); //Setting PIN 8 as AF
  
  RCC_MCOConfig(RCC_MCOSource_SYSCLK, RCC_MCOPrescaler_1); // SYSCLK output to MCO pin PA8 - 48Mhz with prescaler 1

  return 1;
}

