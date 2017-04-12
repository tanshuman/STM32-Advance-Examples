/**
******************************************************************************
* @file    Project/STM32F10x_StdPeriph_Template/stm32f10x_it.c 
* @author  MCD Application Team
* @version V3.5.0
* @date    08-April-2011
* @brief   Main Interrupt Service Routines.
*          This file provides template for all exceptions handler and 
*          peripherals interrupt service routine.
******************************************************************************
* @attention
*
* THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
* WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
* TIME. AS A RESULT, STMICROELECTRONICS SHALL NOT BE HELD LIABLE FOR ANY
* DIRECT, INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
* FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
* CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
*
* <h2><center>&copy; COPYRIGHT 2011 STMicroelectronics</center></h2>
******************************************************************************
*/

/* Includes ------------------------------------------------------------------*/
#include "stm32f10x_it.h"
extern uint16_t Data;
/** @addtogroup STM32F10x_StdPeriph_Template
* @{
*/

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
/* Private functions ---------------------------------------------------------*/

/******************************************************************************/
/*            Cortex-M3 Processor Exceptions Handlers                         */
/******************************************************************************/

/**
* @brief  This function handles NMI exception.
* @param  None
* @retval None
*/
void NMI_Handler(void)
{
}

/**
* @brief  This function handles Hard Fault exception.
* @param  None
* @retval None
*/
void HardFault_Handler(void)
{
  /* Go to infinite loop when Hard Fault exception occurs */
  while (1)
  {
  }
}

/**
* @brief  This function handles Memory Manage exception.
* @param  None
* @retval None
*/
void MemManage_Handler(void)
{
  /* Go to infinite loop when Memory Manage exception occurs */
  while (1)
  {
  }
}

/**
* @brief  This function handles Bus Fault exception.
* @param  None
* @retval None
*/
void BusFault_Handler(void)
{
  /* Go to infinite loop when Bus Fault exception occurs */
  while (1)
  {
  }
}

/**
* @brief  This function handles Usage Fault exception.
* @param  None
* @retval None
*/
void UsageFault_Handler(void)
{
  /* Go to infinite loop when Usage Fault exception occurs */
  while (1)
  {
  }
}

/**
* @brief  This function handles SVCall exception.
* @param  None
* @retval None
*/
void SVC_Handler(void)
{
}

/**
* @brief  This function handles Debug Monitor exception.
* @param  None
* @retval None
*/
void DebugMon_Handler(void)
{
}

/**
* @brief  This function handles PendSVC exception.
* @param  None
* @retval None
*/
void PendSV_Handler(void)
{
}

/**
* @brief  This function handles SysTick Handler.
* @param  None
* @retval None
*/
void SysTick_Handler(void)
{
}

/******************************************************************************/
/*                 STM32F10x Peripherals Interrupt Handlers                   */
/*  Add here the Interrupt Handler for the used peripheral(s) (PPP), for the  */
/*  available peripheral interrupt handler's name please refer to the startup */
/*  file (startup_stm32f10x_xx.s).                                            */
/******************************************************************************/

/**
* @brief  This function handles UART4 interrupt request.
* @param  None
* @retval None
*/
void UART4_IRQHandler(void)
{
  if(USART_GetITStatus(UART4, USART_IT_RXNE) != RESET)
  {
    /* Read one byte from the receive data register */
    Data = USART_ReceiveData(UART4);
    GPIO_SetBits(GPIOE, GPIO_Pin_15);
    if(Data != 'K')
      USART_SendData(UART4, Data);
    //  USART_ITConfig(UART4, USART_IT_RXNE, DISABLE);
  }

}
void UART5_IRQHandler(void)
{
  if(USART_GetITStatus(UART5, USART_IT_RXNE) != RESET)
  {
    /* Read one byte from the receive data register */
    Data = USART_ReceiveData(UART5);
    GPIO_SetBits(GPIOE, GPIO_Pin_15);
    if(Data != 'K')
      USART_SendData(UART5, Data);
    //  USART_ITConfig(UART4, USART_IT_RXNE, DISABLE);
  } 
}

void USART2_IRQHandler(void)
{
  if(USART_GetITStatus(USART2, USART_IT_RXNE) != RESET)
  {
    /* Read one byte from the receive data register */
    Data = USART_ReceiveData(USART2);
    GPIO_SetBits(GPIOE, GPIO_Pin_15);
    if(Data != 'K')
      USART_SendData(USART2, Data);
    //  USART_ITConfig(UART4, USART_IT_RXNE, DISABLE);
  } 
}

/**
* @}
*/ 


/******************* (C) COPYRIGHT 2011 STMicroelectronics *****END OF FILE****/
