#include "main.h"

uint16_t RegularConvData_Tab[5];

void DMA_Configurations(void)
{
  // Reset All the Registers for DMA
  DMA_DeInit(DMA1_Channel1);
  DMA_InitTypeDef DMA_Config;
  // Config DMA for ADC
  DMA_Config.DMA_PeripheralBaseAddr = (uint32_t) 0x40012440; //FROM REF MANUAL OR USE (uint32_t)(&(ADC1->DR));
  DMA_Config.DMA_MemoryBaseAddr = (uint32_t)RegularConvData_Tab;
  DMA_Config.DMA_DIR = DMA_DIR_PeripheralSRC;
  DMA_Config.DMA_BufferSize = 5;
  DMA_Config.DMA_PeripheralInc = DMA_PeripheralInc_Disable;
  DMA_Config.DMA_MemoryInc = DMA_MemoryInc_Enable;
  DMA_Config.DMA_PeripheralDataSize = DMA_PeripheralDataSize_HalfWord;
  DMA_Config.DMA_MemoryDataSize = DMA_MemoryDataSize_HalfWord;
  DMA_Config.DMA_Mode = DMA_Mode_Circular;
  DMA_Config.DMA_Priority = DMA_Priority_High;
  DMA_Config.DMA_M2M = DMA_M2M_Disable;
  DMA_Init(DMA1_Channel1, &DMA_Config);
  // DMA1 Channel1 enable
  DMA_Cmd(DMA1_Channel1, ENABLE);

}