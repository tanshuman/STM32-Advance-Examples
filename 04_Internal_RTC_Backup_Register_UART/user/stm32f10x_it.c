
/* Includes ------------------------------------------------------------------*/
#include "stm32f10x_it.h"
extern uint16_t Data;

/*--------------------------- UART4 ------------------------------------------*/
//void UART4_IRQHandler(void)
//{
//  if(USART_GetITStatus(UART4, USART_IT_RXNE) != RESET)
//  {
//    /* Read one byte from the receive data register */
//    
//    GPIO_SetBits(GPIOE, GPIO_Pin_15);
//  }
//  GPIO_ResetBits(GPIOE, GPIO_Pin_15); 
//}

/*--------------------------- RTC-G ------------------------------------------*/
void RTC_IRQHandler(void)
{
  if (RTC_GetITStatus(RTC_IT_SEC) != RESET)
  {
    /* Clear the RTC Second interrupt */
    RTC_ClearITPendingBit(RTC_IT_SEC);

    /* Do Something */
    Time_Display(RTC_GetCounter());
    
    /* Reset RTC Counter when Time is 23:59:59 */
    if (RTC_GetCounter() == 0x0001517F)
    {
      RTC_SetCounter(0x0);
      /* Wait until last write operation on RTC registers has finished */
      RTC_WaitForLastTask();
    }
    
    /* Wait until last write operation on RTC registers has finished */
    RTC_WaitForLastTask();
    
  }
}




/***************** (C) COPYRIGHT 2016 Cygni Energy Pvt Ltd *****END OF FILE****/
