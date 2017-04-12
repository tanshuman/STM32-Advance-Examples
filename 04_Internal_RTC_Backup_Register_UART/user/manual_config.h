#include "stm32f10x.h"

void RCC_Configuration(void);
void GPIO_Configuration(void);
void USART_Configuration(void);
void NVIC_Configuration(void);
void RTC_Prim_Config(void);
void RTC_Configuration(void);
void OutString(char*);
void Time_Display(uint32_t);
void Time_Adjust(void);
uint32_t Time_Regulate(void);
uint8_t USART_Scanf(uint32_t value);