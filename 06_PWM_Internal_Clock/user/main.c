#include "main.h"
uint16_t pulse_pwm = 0;
uint16_t counter =1;

int main()
{
  RCC_Config();
  GPIO_Config();
  Clk_Config();
  TIM_Config();
  NVIC_Config();
  
  
  while(1) 
  {
    //Testing Inverter Relay
    GPIO_SetBits(GPIOE, GPIO_Pin_7);
    for(int j=0; j<90 ;j++)
      for(int i=0; i<=500000; i++);
    GPIO_ResetBits(GPIOE, GPIO_Pin_7);
    for(int j=0; j<90 ;j++)
      for(int i=0; i<=500000; i++);
  }
    
}

void TIM1_BRK_UP_TRG_COM_IRQHandler(void)
{
  if (TIM_GetITStatus(TIM1, TIM_IT_Update) != RESET)
  {
    TIM_ClearITPendingBit(TIM1, TIM_IT_Update);
    if(counter > 0 && counter <= 48)
      pulse_pwm += 50;
    else if(counter >50 && counter <= 98)
      pulse_pwm -= 50;
    else if(counter >100 && counter <= 148)
      pulse_pwm += 50;
    else if(counter >150 && counter <= 198)
      pulse_pwm -= 50;
    if(counter < 100)
      TIM_SetCompare1(TIM1, pulse_pwm);
    else if(counter > 100 && counter < 200)
      TIM_SetCompare2(TIM1, pulse_pwm);
    counter++;
    if(counter >= 200)
    {
     counter = 1;
     pulse_pwm = 0;
    }
  }
}
