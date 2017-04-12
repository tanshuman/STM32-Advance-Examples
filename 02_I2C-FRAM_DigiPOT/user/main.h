#include "user_config.h"
#include "stm32f0xx.h"
#include "i2c_user.h"
#include "uart_user.h"
#include <stdio.h>

#define FRAM_Address ((uint8_t)0xAC)
#define Digi_1_Address ((uint8_t)0x5C)
#define Digi_0_Address ((uint8_t)0x5E)

void ext_digipot_test(void);
void read_adc(void);
int readADC1(void);