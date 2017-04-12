#include "main.h"

uint32_t I2C1_WriteBuffer(uint8_t* pBuffer, uint16_t DeviceAddr, uint16_t DeviceAddrByteSize, uint16_t WriteAddr, uint16_t NumByteToWrite)
{
  
  if(DeviceAddrByteSize > 2)
    return 0; // max 2 byte device address supported  
  
  /* Configure slave address, nbytes, reload and generate start */
  I2C_TransferHandling(I2C1, DeviceAddr, DeviceAddrByteSize , I2C_Reload_Mode, I2C_Generate_Start_Write);
  if(!i2c_check())  return 0;
  
  /* Send MSB of memory address in case device address size is of 2 bytes */
  if(DeviceAddrByteSize == 2)
  {
    I2C_SendData(I2C1, (uint8_t)((WriteAddr & 0xFF00) >> 8));
    if(!i2c_check())  return 0;
  }
  
  /* Send LSB of memory address  */
  I2C_SendData(I2C1, (uint8_t)(WriteAddr & 0x00FF));
  uint32_t FramTimeout = FRAM_LONG_TIMEOUT;
  /* Wait until TCR flag is set */
  while(I2C_GetFlagStatus(I2C1, I2C_ISR_TCR) == RESET)
  {
    if((FramTimeout--) == 0) return 0;
  }
  
  
  /* Update CR2 : set Slave Address , set write request, generate Start and set end mode */
  I2C_TransferHandling(I2C1, DeviceAddr, (uint32_t)(NumByteToWrite), I2C_AutoEnd_Mode, I2C_No_StartStop);
  
  /* Write data to TXDR one byte at a time*/
  for(int i=0; i < (NumByteToWrite); i++)
  {
    if(!i2c_check())  return 0;
    I2C_SendData(I2C1, (uint8_t)(pBuffer[i]));
  }
  
  /* Wait until STOPF flag is set */
  FramTimeout = FRAM_LONG_TIMEOUT;  
  while(I2C_GetFlagStatus(I2C1, I2C_ISR_STOPF) == RESET)
    if((FramTimeout--) == 0) return 0;
  
  /* Clear STOPF flag */
  I2C_ClearFlag(I2C1, I2C_ICR_STOPCF);
  return 1;
}



uint32_t I2C1_ReadBuffer(uint8_t* pBuffer, uint16_t DeviceAddr, uint16_t DeviceAddrByteSize, uint16_t WriteAddr, uint16_t NumByteToWrite)
{
  if(DeviceAddrByteSize > 2)
    return 0; // max 2 byte device address supported
  
  /* Configure slave address, nbytes, reload and generate start */
  I2C_TransferHandling(I2C1, DeviceAddr, DeviceAddrByteSize , I2C_SoftEnd_Mode, I2C_Generate_Start_Write);
  if(!i2c_check())  return 0;
  
  /* Send MSB of memory address in case device address size is of 2 bytes */
  if(DeviceAddrByteSize == 2)
  {
    I2C_SendData(I2C1, (uint8_t)((WriteAddr & 0xFF00) >> 8));
    if(!i2c_check())  return 0;
  }
  
  /* Send LSB of memory address  */
  I2C_SendData(I2C1, (uint8_t)(WriteAddr & 0x00FF));
  uint32_t FramTimeout = FRAM_LONG_TIMEOUT;
  /* Wait until TC flag is set */
  while(I2C_GetFlagStatus(I2C1, I2C_ISR_TC) == RESET)
  {
    if((FramTimeout--) == 0) return 0;
  }
  
  /* Update CR2 : set Slave Address , set write request, generate Start and set end mode */
  I2C_TransferHandling(I2C1, DeviceAddr, (uint32_t)(NumByteToWrite), I2C_AutoEnd_Mode, I2C_Generate_Start_Read);
  
  /* Write data to TXDR one byte at a time*/
  for(int i=0; i < (NumByteToWrite); i++)
  {
    /* Wait until RXNE flag is set */
    FramTimeout = FRAM_LONG_TIMEOUT;
    while(I2C_GetFlagStatus(I2C1, I2C_ISR_RXNE) == RESET)
    {
      if((FramTimeout--) == 0) return 0;
    }
    
    /* Read data from RXDR */
    pBuffer[i]= I2C_ReceiveData(I2C1);
  }
  
  /* Wait until STOPF flag is set */
  FramTimeout = FRAM_LONG_TIMEOUT;  
  while(I2C_GetFlagStatus(I2C1, I2C_ISR_STOPF) == RESET)
    if((FramTimeout--) == 0) return 0;
  
  /* Clear STOPF flag */
  I2C_ClearFlag(I2C1, I2C_ICR_STOPCF);
  return 1;
}


int i2c_check()
{
  uint32_t FramTimeout = FRAM_LONG_TIMEOUT;
  while(I2C_GetFlagStatus(I2C1, I2C_ISR_TXIS) == RESET) // Wait until TXIS flag is set
  {
    if((FramTimeout--) == 0) 
      return 0; 
  }
  return 1;
}