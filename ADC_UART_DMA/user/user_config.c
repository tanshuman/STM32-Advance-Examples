#include "main.h"

void RCC_Configurations(void)
{
  // Enable ADC Periph Clock
  RCC_APB2PeriphClockCmd(RCC_APB2Periph_ADC1, ENABLE); 
  // Enable DMA Periph Clock
  RCC_AHBPeriphClockCmd(RCC_AHBPeriph_DMA1, ENABLE);
  // Port A Clock Configuration
  RCC_AHBPeriphClockCmd(RCC_AHBPeriph_GPIOA, ENABLE);
  // USART1 Clock Configuration
  RCC_APB2PeriphClockCmd(RCC_APB2Periph_USART1, ENABLE);
}

void GPIO_Configurations(void)
{
  // Reset All The Registers
  GPIO_DeInit(GPIOA);
  GPIO_InitTypeDef GPIO_Config;
  // Pin Configuration for USART-1 Pins
  GPIO_Config.GPIO_Pin = GPIO_Pin_9 | GPIO_Pin_10;
  GPIO_Config.GPIO_Mode = GPIO_Mode_AF;
  GPIO_Config.GPIO_Speed = GPIO_Speed_Level_2;
  GPIO_Config.GPIO_OType = GPIO_OType_PP;
  GPIO_Config.GPIO_PuPd = GPIO_PuPd_UP;
  GPIO_Init(GPIOA, &GPIO_Config);
  // Pin Configuration for ADC
  GPIO_Config.GPIO_Pin =  GPIO_Pin_1 | GPIO_Pin_2 | GPIO_Pin_6;
  GPIO_Config.GPIO_PuPd = GPIO_PuPd_NOPULL;
  GPIO_Config.GPIO_Mode = GPIO_Mode_AN;
  GPIO_Init(GPIOA, &GPIO_Config);
  
  // Alternate Function Configuration for USART1
  GPIO_PinAFConfig(GPIOA, GPIO_PinSource9, GPIO_AF_1);//PA9 TX
  GPIO_PinAFConfig(GPIOA, GPIO_PinSource10, GPIO_AF_1);//PA10 RX
}
