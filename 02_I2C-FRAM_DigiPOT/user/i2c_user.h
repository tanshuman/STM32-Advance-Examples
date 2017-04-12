

#define FRAM_FLAG_TIMEOUT ((uint32_t)0x2000)
#define FRAM_LONG_TIMEOUT ((uint32_t)(10 * FRAM_FLAG_TIMEOUT))


uint32_t I2C1_WriteBuffer(uint8_t* pBuffer, uint16_t DeviceAddr, uint16_t DeviceAddrByteSize, uint16_t WriteAddr, uint16_t NumByteToWrite);
uint32_t I2C1_ReadBuffer(uint8_t* pBuffer, uint16_t DeviceAddr, uint16_t DeviceAddrByteSize, uint16_t ReadAddr, uint16_t NumByteToRead);
int i2c_check(void);