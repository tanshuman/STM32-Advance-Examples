#include "main.h"
extern uint16_t RegularConvData_Tab[5];

void ADC_Configurations(void)
{
  // Reset all the Registers
  ADC_DeInit(ADC1);
  ADC_InitTypeDef ADC_Config;
  /* Configure the ADC1 in cont. conv mode with a resolution equal to 12 bits  */
  
  ADC_Config.ADC_Resolution = ADC_Resolution_12b;
  ADC_Config.ADC_ContinuousConvMode = ENABLE;
  ADC_Config.ADC_DataAlign = ADC_DataAlign_Right;
  ADC_Config.ADC_ScanDirection = ADC_ScanDirection_Upward;
  ADC_Config.ADC_ExternalTrigConvEdge = ADC_ExternalTrigConvEdge_None;
  ADC_Config.ADC_ExternalTrigConv = ADC_ExternalTrigConv_T1_TRGO;
  ADC_Init(ADC1, &ADC_Config);
  // Selecting Channels
  // Solar Voltage
  ADC_ChannelConfig(ADC1, ADC_Channel_1, ADC_SampleTime_55_5Cycles);
  // Battery Voltage
  ADC_ChannelConfig(ADC1, ADC_Channel_2, ADC_SampleTime_55_5Cycles);
  // DPAU Voltage
  ADC_ChannelConfig(ADC1, ADC_Channel_6, ADC_SampleTime_55_5Cycles);
  // ADC Tempr Sensor
  ADC_ChannelConfig(ADC1, ADC_Channel_TempSensor , ADC_SampleTime_55_5Cycles);  
  ADC_TempSensorCmd(ENABLE);
  // ADC Vbat
  ADC_ChannelConfig(ADC1, ADC_Channel_Vbat , ADC_SampleTime_55_5Cycles);  
  ADC_VbatCmd(ENABLE);
  // ADC Calibration 
  ADC_GetCalibrationFactor(ADC1);
  // DMA Mode - Circular or One Shot
  ADC_DMARequestModeConfig(ADC1, ADC_DMAMode_Circular);
  // Enable DMA for ADC1
  ADC_DMACmd(ADC1, ENABLE);
  // Enable ADC
  ADC_Cmd(ADC1, ENABLE);
  // Wait the ADRDY flag
  while(!ADC_GetFlagStatus(ADC1, ADC_FLAG_ADRDY)) ;   
  // ADC1 regular Software Start Conv
  ADC_StartOfConversion(ADC1);
}

uint16_t read_adc(int channel)
// With DMA
{
  return RegularConvData_Tab[channel];
}




//Without DMA
//{
//  // Start the Conversion 
//  ADC_StartOfConversion(ADC1);
//  
//  uint32_t LONG_TIME_DELAY = 500000;
//  // Wait for conversion to complete
//  while(!ADC_GetFlagStatus(ADC1, ADC_FLAG_EOC))
//  {
//    if(LONG_TIME_DELAY == 0)
//    {
//      usart1_out("ERROR IN ADC CONV. #1\r\n");
//      break;
//    }
//    else
//      LONG_TIME_DELAY--;
//  }
//  
//  if(channel == 1)
//  {
//    ADC_StopOfConversion(ADC1);
//    return ADC_GetConversionValue(ADC1);
//  }
//  ADC_GetConversionValue(ADC1);
//  
//  LONG_TIME_DELAY = 500000;
//  while(!ADC_GetFlagStatus(ADC1, ADC_FLAG_EOC))
//  {
//    if(LONG_TIME_DELAY == 0)
//    {
//      usart1_out("ERROR IN ADC CONV. #2\r\n");
//      return 0;
//    }
//    else
//      LONG_TIME_DELAY--;
//  }
//  
//   if(channel == 2)
//  {
//    ADC_StopOfConversion(ADC1);
//    return ADC_GetConversionValue(ADC1);
//  }
//  else
//    ADC_GetConversionValue(ADC1);
//  
//  LONG_TIME_DELAY = 500000;
//  // Wait for conversion to complete
//  while(!ADC_GetFlagStatus(ADC1, ADC_FLAG_EOSEQ)) //Not Working with EOSEQ flag
//  {
//    if(LONG_TIME_DELAY == 0)
//    {
//      usart1_out("ERROR IN ADC CONV. #3\r\n");
//      return 0;
//    }
//    else
//      LONG_TIME_DELAY--;
//  }
//  
//  ADC_ClearFlag(ADC1, ADC_FLAG_EOSEQ);
//  
//  return ADC_GetConversionValue(ADC1);
//}