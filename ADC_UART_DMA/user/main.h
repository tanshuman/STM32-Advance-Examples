#include "stm32f0xx.h"
#include <stdio.h>


// User Configurations Headers
void RCC_Configurations(void);
void GPIO_Configurations(void);

// ADC Headers
uint16_t read_adc(int channel);
void ADC_Configurations(void);

// DMA Headers
void DMA_Configurations(void);

// USART Headers
void USART_Configurations(void);
uint8_t usart1_out(char* pbuffer);

#ifdef __GNUC__
/* With GCC/RAISONANCE, small printf (option LD Linker->Libraries->Small printf
   set to 'Yes') calls __io_putchar() */
#define PUTCHAR_PROTOTYPE int __io_putchar(int ch)
#else
#define PUTCHAR_PROTOTYPE int fputc(int ch, FILE *f)
#endif /* __GNUC__ */