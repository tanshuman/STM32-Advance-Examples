







































































 

 


























 

 


 










































 



 



 
    

  


 
  


 

      
      
      
   
      
   
      
   
     



 

 

 

 

 










 




 




 








 



 



 




 

 
typedef enum IRQn
{
 
  NonMaskableInt_IRQn         = -14,     
  HardFault_IRQn              = -13,     
  SVC_IRQn                    = -5,      
  PendSV_IRQn                 = -2,      
  SysTick_IRQn                = -1,      

  WWDG_IRQn                   = 0,       
  PVD_VDDIO2_IRQn             = 1,       
  RTC_IRQn                    = 2,       
  FLASH_IRQn                  = 3,       
  RCC_CRS_IRQn                = 4,       
  EXTI0_1_IRQn                = 5,       
  EXTI2_3_IRQn                = 6,       
  EXTI4_15_IRQn               = 7,       
  TSC_IRQn                    = 8,       
  DMA1_Channel1_IRQn          = 9,       
  DMA1_Channel2_3_IRQn        = 10,      
  DMA1_Channel4_5_6_7_IRQn    = 11,      
  ADC1_COMP_IRQn              = 12,      
  TIM1_BRK_UP_TRG_COM_IRQn    = 13,      
  TIM1_CC_IRQn                = 14,      
  TIM2_IRQn                   = 15,      
  TIM3_IRQn                   = 16,      
  TIM6_DAC_IRQn               = 17,      
  TIM7_IRQn                   = 18,      
  TIM14_IRQn                  = 19,      
  TIM15_IRQn                  = 20,      
  TIM16_IRQn                  = 21,      
  TIM17_IRQn                  = 22,      
  I2C1_IRQn                   = 23,      
  I2C2_IRQn                   = 24,      
  SPI1_IRQn                   = 25,      
  SPI2_IRQn                   = 26,      
  USART1_IRQn                 = 27,      
  USART2_IRQn                 = 28,      
  USART3_4_IRQn               = 29,      
  CEC_CAN_IRQn                = 30,      
  USB_IRQn                    = 31       
}IRQn_Type;



 

 







 

























 


 #pragma system_include   














 




 


 

 






 



 
 

  #pragma system_include

 
 

 

  #pragma system_include






 















 
















 






 
 


  #pragma system_include

 
 

 

  #pragma system_include






 















 





                 



  

                 













 

   



                 



























 


  #pragma system_include

 
 
 


  #pragma system_include

 

 

 

 

   

 

   #pragma system_include






 




 

 


 


 

 

 

 

 

 

 

 

 

 














 












 




















 










 




















































































































 


 










 





















 















 













 








 












 











 










 









 











 









 









 









 









 














 














 
















 












 








 











 










 









 









 









 









 









 









 









 









 







 




 









 




 





 
















































 













 






 


   

  







 





 





 




 



 





 




 



 












 
   






 
  #pragma language = save 
  #pragma language = extended
  #pragma language = restore






 





 




 





 








                 




















 


                 

 

 
 

 

 

 

 



                 






 
 


  #pragma system_include

 
 

 

  #pragma system_include






 















 




 
 





 

                                 













                 

                 

                 

                 
                 



                 
                                 


  #pragma language=save
  #pragma language=extended
  typedef long long _Longlong;
  typedef unsigned long long _ULonglong;
  #pragma language=restore

  typedef unsigned short int _Wchart;
  typedef unsigned short int _Wintt;



                 

typedef signed int  _Ptrdifft;
typedef unsigned int     _Sizet;

 

                 



 
  typedef struct __va_list
  {
    char  *_Ap;
  } __va_list;

  typedef __va_list __Va_list;


__intrinsic __nounwind void __iar_Atexit(void (*)(void));


  typedef struct
  {        
    unsigned int _Wchar;
    unsigned int _State;
  } _Mbstatet;



  typedef struct __FILE _Filet;


typedef struct
{        
  _Longlong _Off;     
  _Mbstatet _Wstate;
} _Fpost;




                 














 


  #pragma system_include





 






















































































 

 


  
 

   


  





  #pragma language=save 
  #pragma language=extended
  __intrinsic __nounwind void __iar_dlib_perthread_initialize(void  *);
  __intrinsic __nounwind void  *__iar_dlib_perthread_allocate(void);
  __intrinsic __nounwind void __iar_dlib_perthread_destroy(void);
  __intrinsic __nounwind void __iar_dlib_perthread_deallocate(void  *);



  #pragma segment = "__DLIB_PERTHREAD" 
  #pragma segment = "__DLIB_PERTHREAD_init" 









   
  void  *__iar_dlib_perthread_access(void  *);
  #pragma language=restore








     
  



   
    __intrinsic __nounwind void __iar_Locale_lconv_init(void);

  


  
  typedef void *__iar_Rmtx;
  
  
  __intrinsic __nounwind void __iar_system_Mtxinit(__iar_Rmtx *m);
  __intrinsic __nounwind void __iar_system_Mtxdst(__iar_Rmtx *m);
  __intrinsic __nounwind void __iar_system_Mtxlock(__iar_Rmtx *m);
  __intrinsic __nounwind void __iar_system_Mtxunlock(__iar_Rmtx *m);

  __intrinsic __nounwind void __iar_file_Mtxinit(__iar_Rmtx *m);
  __intrinsic __nounwind void __iar_file_Mtxdst(__iar_Rmtx *m);
  __intrinsic __nounwind void __iar_file_Mtxlock(__iar_Rmtx *m);
  __intrinsic __nounwind void __iar_file_Mtxunlock(__iar_Rmtx *m);

  
 
  __intrinsic __nounwind void __iar_clearlocks(void);



  



  


  typedef unsigned _Once_t;

  








                 


                 
  
  
    
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Locksyslock_Locale(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Locksyslock_Malloc(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Locksyslock_Stream(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Locksyslock_Debug(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Locksyslock_StaticGuard(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Locksyslock(unsigned int);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Unlocksyslock_Locale(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Unlocksyslock_Malloc(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Unlocksyslock_Stream(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Unlocksyslock_Debug(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Unlocksyslock_StaticGuard(void);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Unlocksyslock(unsigned int);

  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Initdynamicfilelock(__iar_Rmtx *);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Dstdynamicfilelock(__iar_Rmtx *);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Lockdynamicfilelock(__iar_Rmtx *);
  _Pragma("object_attribute = __weak") __intrinsic __nounwind void __iar_Unlockdynamicfilelock(__iar_Rmtx *);
  
  

                 


                 







 


 
  typedef signed char   int8_t;
  typedef unsigned char uint8_t;

  typedef signed short int   int16_t;
  typedef unsigned short int uint16_t;

  typedef signed int   int32_t;
  typedef unsigned int uint32_t;

  #pragma language=save
  #pragma language=extended
  typedef signed long long int   int64_t;
  typedef unsigned long long int uint64_t;
  #pragma language=restore


 
typedef signed char   int_least8_t;
typedef unsigned char uint_least8_t;

typedef signed short int   int_least16_t;
typedef unsigned short int uint_least16_t;

typedef signed int   int_least32_t;
typedef unsigned int uint_least32_t;

 
  #pragma language=save
  #pragma language=extended
  typedef signed long long int int_least64_t;
  #pragma language=restore
  #pragma language=save
  #pragma language=extended
  typedef unsigned long long int uint_least64_t;
  #pragma language=restore



 
typedef signed int   int_fast8_t;
typedef unsigned int uint_fast8_t;

typedef signed int   int_fast16_t;
typedef unsigned int uint_fast16_t;

typedef signed int   int_fast32_t;
typedef unsigned int uint_fast32_t;

  #pragma language=save
  #pragma language=extended
  typedef signed long long int int_fast64_t;
  #pragma language=restore
  #pragma language=save
  #pragma language=extended
  typedef unsigned long long int uint_fast64_t;
  #pragma language=restore

 
#pragma language=save
#pragma language=extended
typedef signed long long int   intmax_t;
typedef unsigned long long int uintmax_t;
#pragma language=restore


 
typedef signed long int   intptr_t;
typedef unsigned long int uintptr_t;

 
typedef int __data_intptr_t; typedef unsigned int __data_uintptr_t;

 

























 














 
 




 

























 


 #pragma system_include          



 



 

 










 



#pragma system_include









 


 
 

 

  #pragma system_include






 















 





  #pragma system_include



 


 


#pragma language=save
#pragma language=extended

__intrinsic __nounwind void    __no_operation(void);

__intrinsic __nounwind void    __disable_interrupt(void);
__intrinsic __nounwind void    __enable_interrupt(void);

typedef unsigned long __istate_t;

__intrinsic __nounwind __istate_t __get_interrupt_state(void);
__intrinsic __nounwind void __set_interrupt_state(__istate_t);


 
__intrinsic __nounwind unsigned long __get_PSR( void );
__intrinsic __nounwind unsigned long __get_IPSR( void );
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned long __get_MSP( void );
__intrinsic __nounwind void          __set_MSP( unsigned long );
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned long __get_PSP( void );
__intrinsic __nounwind void          __set_PSP( unsigned long );
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned long __get_PRIMASK( void );
__intrinsic __nounwind void          __set_PRIMASK( unsigned long );
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned long __get_CONTROL( void );
__intrinsic __nounwind void          __set_CONTROL( unsigned long );


__intrinsic __nounwind void __disable_fiq(void);
__intrinsic __nounwind void __enable_fiq(void);


 

_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned long __SWP( unsigned long, volatile unsigned long * );
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned char __SWPB( unsigned char, volatile unsigned char * );

typedef unsigned long __ul;


 
__intrinsic __nounwind void          __MCR( unsigned __constrange(0,15) coproc, unsigned __constrange(0,8) opcode_1, __ul src,
                                 unsigned __constrange(0,15) CRn, unsigned __constrange(0,15) CRm, unsigned __constrange(0,8) opcode_2 );
__intrinsic __nounwind unsigned long __MRC( unsigned __constrange(0,15) coproc, unsigned __constrange(0,8) opcode_1,
                                 unsigned __constrange(0,15) CRn, unsigned __constrange(0,15) CRm, unsigned __constrange(0,8) opcode_2 );
__intrinsic __nounwind void          __MCR2( unsigned __constrange(0,15) coproc, unsigned __constrange(0,8) opcode_1, __ul src,
                                  unsigned __constrange(0,15) CRn, unsigned __constrange(0,15) CRm, unsigned __constrange(0,8) opcode_2 );
__intrinsic __nounwind unsigned long __MRC2( unsigned __constrange(0,15) coproc, unsigned __constrange(0,8) opcode_1,
                                  unsigned __constrange(0,15) CRn, unsigned __constrange(0,15) CRm, unsigned __constrange(0,8) opcode_2 );

 
__intrinsic __nounwind void __LDC( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul const *src);
__intrinsic __nounwind void __LDCL( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul const *src);
__intrinsic __nounwind void __LDC2( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul const *src);
__intrinsic __nounwind void __LDC2L( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul const *src);

 
__intrinsic __nounwind void __STC( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul *dst);
__intrinsic __nounwind void __STCL( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul *dst);
__intrinsic __nounwind void __STC2( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul *dst);
__intrinsic __nounwind void __STC2L( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul *dst);

 
__intrinsic __nounwind void __LDC_noidx( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul const *src,
                              unsigned __constrange(0,255) option);

__intrinsic __nounwind void __LDCL_noidx( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul const *src,
                               unsigned __constrange(0,255) option);

__intrinsic __nounwind void __LDC2_noidx( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul const *src,
                               unsigned __constrange(0,255) option);

__intrinsic __nounwind void __LDC2L_noidx( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul const *src,
                                unsigned __constrange(0,255) option);

 
__intrinsic __nounwind void __STC_noidx( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul *dst,
                              unsigned __constrange(0,255) option);

__intrinsic __nounwind void __STCL_noidx( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul *dst,
                               unsigned __constrange(0,255) option);

__intrinsic __nounwind void __STC2_noidx( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul *dst,
                               unsigned __constrange(0,255) option);

__intrinsic __nounwind void __STC2L_noidx( unsigned __constrange(0,15) coproc, unsigned __constrange(0,15) CRn, volatile __ul *dst,
                                unsigned __constrange(0,255) option);

 
__intrinsic __nounwind unsigned long __get_APSR( void );
__intrinsic __nounwind void          __set_APSR( unsigned long );

 
__intrinsic __nounwind unsigned long __get_FPSCR( void );
__intrinsic __nounwind void __set_FPSCR( unsigned long );

 
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned char __CLZ( unsigned long );

 

_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind int         __QCFlag( void );
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind void __reset_QC_flag( void );

_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind signed long __SMUL( signed short, signed short );

 
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned long __REV( unsigned long );
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind signed long __REVSH( short );

_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned long __REV16( unsigned long );
_Pragma("function_effects = no_state, always_returns") __intrinsic __nounwind unsigned long __RBIT( unsigned long );

_Pragma("function_effects = no_state, no_write(1), always_returns") __intrinsic __nounwind unsigned char  __LDREXB( volatile unsigned char const * );
_Pragma("function_effects = no_state, no_write(1), always_returns") __intrinsic __nounwind unsigned short __LDREXH( volatile unsigned short const * );
_Pragma("function_effects = no_state, no_write(1), always_returns") __intrinsic __nounwind unsigned long  __LDREX ( volatile unsigned long const * );
_Pragma("function_effects = no_state, no_write(1), always_returns") __intrinsic __nounwind unsigned long long __LDREXD( volatile unsigned long long const * );

_Pragma("function_effects = no_state, no_read(2), always_returns") __intrinsic __nounwind unsigned long  __STREXB( unsigned char, volatile unsigned char * );
_Pragma("function_effects = no_state, no_read(2), always_returns") __intrinsic __nounwind unsigned long  __STREXH( unsigned short, volatile unsigned short * );
_Pragma("function_effects = no_state, no_read(2), always_returns") __intrinsic __nounwind unsigned long  __STREX ( unsigned long, volatile unsigned long * );
_Pragma("function_effects = no_state, no_read(2), always_returns") __intrinsic __nounwind unsigned long  __STREXD( unsigned long long, volatile unsigned long long * );

__intrinsic __nounwind void __CLREX( void );

__intrinsic __nounwind void __SEV( void );
__intrinsic __nounwind void __WFE( void );
__intrinsic __nounwind void __WFI( void );
__intrinsic __nounwind void __YIELD( void );

__intrinsic __nounwind void __PLI( volatile void const * );
__intrinsic __nounwind void __PLD( volatile void const * );
__intrinsic __nounwind void __PLDW( volatile void const * );

_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind   signed long __SSAT     (unsigned long val,
                                      unsigned int __constrange( 1, 32 ) sat );
_Pragma("function_effects = hidden_state, always_returns") __intrinsic __nounwind unsigned long __USAT     (unsigned long val,
                                      unsigned int __constrange( 0, 31 ) sat );



 
__intrinsic __nounwind void __DMB(void);
__intrinsic __nounwind void __DSB(void);
__intrinsic __nounwind void __ISB(void);

 
__intrinsic __nounwind unsigned long __TT(unsigned long);
__intrinsic __nounwind unsigned long __TTT(unsigned long);
__intrinsic __nounwind unsigned long __TTA(unsigned long);
__intrinsic __nounwind unsigned long __TTAT(unsigned long);


__intrinsic __nounwind unsigned long __get_LR(void);
__intrinsic __nounwind void __set_LR(unsigned long);

__intrinsic __nounwind unsigned long __get_SP(void);
__intrinsic __nounwind void __set_SP(unsigned long);

#pragma language=restore




   

#pragma diag_suppress=Pe940
#pragma diag_suppress=Pe177






static uint32_t __get_xPSR(void)
{
  return __get_PSR();    
}







static inline uint32_t __ROR(uint32_t op1, uint32_t op2)
{
  return (op1 >> op2) | (op1 << ((sizeof(op1)*8)-op2));
}

#pragma diag_default=Pe940
#pragma diag_default=Pe177


 

   

 




 

























 


 #pragma system_include          



 



 

 

 

 





 

 






 

 










 


 





 


 
typedef union
{
  struct
  {
    uint32_t _reserved0:27;               
    uint32_t Q:1;                         
    uint32_t V:1;                         
    uint32_t C:1;                         
    uint32_t Z:1;                         
    uint32_t N:1;                         
  } b;                                    
  uint32_t w;                             
} APSR_Type;



 
typedef union
{
  struct
  {
    uint32_t ISR:9;                       
    uint32_t _reserved0:23;               
  } b;                                    
  uint32_t w;                             
} IPSR_Type;



 
typedef union
{
  struct
  {
    uint32_t ISR:9;                       
    uint32_t _reserved0:15;               
    uint32_t T:1;                         
    uint32_t IT:2;                        
    uint32_t Q:1;                         
    uint32_t V:1;                         
    uint32_t C:1;                         
    uint32_t Z:1;                         
    uint32_t N:1;                         
  } b;                                    
  uint32_t w;                             
} xPSR_Type;



 
typedef union
{
  struct
  {
    uint32_t nPRIV:1;                     
    uint32_t SPSEL:1;                     
    uint32_t FPCA:1;                      
    uint32_t _reserved0:29;               
  } b;                                    
  uint32_t w;                             
} CONTROL_Type;

 






 


 
typedef struct
{
  volatile uint32_t ISER[1];                  
       uint32_t RESERVED0[31];
  volatile uint32_t ICER[1];                  
       uint32_t RSERVED1[31];
  volatile uint32_t ISPR[1];                  
       uint32_t RESERVED2[31];
  volatile uint32_t ICPR[1];                  
       uint32_t RESERVED3[31];
       uint32_t RESERVED4[64];
  volatile uint32_t IP[8];                    
}  NVIC_Type;

 






 


 
typedef struct
{
  volatile const  uint32_t CPUID;                    
  volatile uint32_t ICSR;                     
       uint32_t RESERVED0;
  volatile uint32_t AIRCR;                    
  volatile uint32_t SCR;                      
  volatile uint32_t CCR;                      
       uint32_t RESERVED1;
  volatile uint32_t SHP[2];                   
  volatile uint32_t SHCSR;                    
} SCB_Type;

 





 









 





 



 


 

 






 


 
typedef struct
{
  volatile uint32_t CTRL;                     
  volatile uint32_t LOAD;                     
  volatile uint32_t VAL;                      
  volatile const  uint32_t CALIB;                    
} SysTick_Type;

 




 

 

 



 








 
 






 

 



 









 

 



 




 

 
 







 
static inline void NVIC_EnableIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISER[0] = (1 << ((uint32_t)(IRQn) & 0x1F));
}







 
static inline void NVIC_DisableIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICER[0] = (1 << ((uint32_t)(IRQn) & 0x1F));
}











 
static inline uint32_t NVIC_GetPendingIRQ(IRQn_Type IRQn)
{
  return((uint32_t) ((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[0] & (1 << ((uint32_t)(IRQn) & 0x1F)))?1:0));
}







 
static inline void NVIC_SetPendingIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[0] = (1 << ((uint32_t)(IRQn) & 0x1F));
}







 
static inline void NVIC_ClearPendingIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICPR[0] = (1 << ((uint32_t)(IRQn) & 0x1F));  
}










 
static inline void NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
  if(IRQn < 0) {
    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[( ((((uint32_t)(IRQn) & 0x0F)-8) >> 2) )] = (((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[( ((((uint32_t)(IRQn) & 0x0F)-8) >> 2) )] & ~(0xFF << ( (((uint32_t)(IRQn) ) & 0x03) * 8 ))) |
        (((priority << (8 - 2)) & 0xFF) << ( (((uint32_t)(IRQn) ) & 0x03) * 8 )); }
  else {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[( ((uint32_t)(IRQn) >> 2) )] = (((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[( ((uint32_t)(IRQn) >> 2) )] & ~(0xFF << ( (((uint32_t)(IRQn) ) & 0x03) * 8 ))) |
        (((priority << (8 - 2)) & 0xFF) << ( (((uint32_t)(IRQn) ) & 0x03) * 8 )); }
}












 
static inline uint32_t NVIC_GetPriority(IRQn_Type IRQn)
{

  if(IRQn < 0) {
    return((uint32_t)(((((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[( ((((uint32_t)(IRQn) & 0x0F)-8) >> 2) )] >> ( (((uint32_t)(IRQn) ) & 0x03) * 8 ) ) & 0xFF) >> (8 - 2)));  }  
  else {
    return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[ ( ((uint32_t)(IRQn) >> 2) )] >> ( (((uint32_t)(IRQn) ) & 0x03) * 8 ) ) & 0xFF) >> (8 - 2)));  }  
}





 
static inline void NVIC_SystemReset(void)
{
  __DSB();                                                     
 
  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR  = ((0x5FA << 16)      |
                 (1UL << 2));
  __DSB();                                                      
  while(1);                                                     
}

 



 




 
















 
static inline uint32_t SysTick_Config(uint32_t ticks)
{
  if ((ticks - 1) > (0xFFFFFFUL << 0))  return (1);       

  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->LOAD  = ticks - 1;                                   
  NVIC_SetPriority (SysTick_IRQn, (1<<2) - 1);   
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->VAL   = 0;                                           
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL  = (1UL << 2) |
                   (1UL << 1)   |
                   (1UL << 0);                     
  return (0);                                                   
}


 































 



 



   
  


 




 



 




 

extern uint32_t SystemCoreClock;           



 



 



 



 



 



 
  
extern void SystemInit(void);
extern void SystemCoreClockUpdate(void);


 





 
  


   
 
 
 





 



   

typedef enum {RESET = 0, SET = !RESET} FlagStatus, ITStatus;

typedef enum {DISABLE = 0, ENABLE = !DISABLE} FunctionalState;

typedef enum {ERROR = 0, SUCCESS = !ERROR} ErrorStatus;



    



 

typedef struct
{
  volatile uint32_t ISR;           
  volatile uint32_t IER;           
  volatile uint32_t CR;            
  volatile uint32_t CFGR1;         
  volatile uint32_t CFGR2;         
  volatile uint32_t SMPR;          
  uint32_t   RESERVED1;        
  uint32_t   RESERVED2;        
  volatile uint32_t TR;            
  uint32_t   RESERVED3;        
  volatile uint32_t CHSELR;        
  uint32_t   RESERVED4[5];     
   volatile uint32_t DR;           
} ADC_TypeDef;

typedef struct
{
  volatile uint32_t CCR;
} ADC_Common_TypeDef;




 
typedef struct
{
  volatile uint32_t TIR;   
  volatile uint32_t TDTR;  
  volatile uint32_t TDLR;  
  volatile uint32_t TDHR;  
} CAN_TxMailBox_TypeDef;



 
typedef struct
{
  volatile uint32_t RIR;   
  volatile uint32_t RDTR;  
  volatile uint32_t RDLR;  
  volatile uint32_t RDHR;  
} CAN_FIFOMailBox_TypeDef;
  


 
typedef struct
{
  volatile uint32_t FR1;  
  volatile uint32_t FR2;  
} CAN_FilterRegister_TypeDef;



 
typedef struct
{
  volatile uint32_t              MCR;                  
  volatile uint32_t              MSR;                  
  volatile uint32_t              TSR;                  
  volatile uint32_t              RF0R;                 
  volatile uint32_t              RF1R;                 
  volatile uint32_t              IER;                  
  volatile uint32_t              ESR;                  
  volatile uint32_t              BTR;                  
  uint32_t                   RESERVED0[88];        
  CAN_TxMailBox_TypeDef      sTxMailBox[3];        
  CAN_FIFOMailBox_TypeDef    sFIFOMailBox[2];      
  uint32_t                   RESERVED1[12];        
  volatile uint32_t              FMR;                  
  volatile uint32_t              FM1R;                 
  uint32_t                   RESERVED2;            
  volatile uint32_t              FS1R;                 
  uint32_t                   RESERVED3;            
  volatile uint32_t              FFA1R;                
  uint32_t                   RESERVED4;            
  volatile uint32_t              FA1R;                 
  uint32_t                   RESERVED5[8];         
  CAN_FilterRegister_TypeDef sFilterRegister[28];  
} CAN_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;            
  volatile uint32_t CFGR;          
  volatile uint32_t TXDR;          
  volatile uint32_t RXDR;          
  volatile uint32_t ISR;           
  volatile uint32_t IER;           
}CEC_TypeDef;



 

typedef struct
{
  volatile uint32_t CSR;      
} COMP_TypeDef;




 

typedef struct
{
  volatile uint32_t DR;           
  volatile uint8_t  IDR;          
  uint8_t       RESERVED0;    
  uint16_t      RESERVED1;    
  volatile uint32_t CR;           
  uint32_t      RESERVED2;    
  volatile uint32_t INIT;         
  volatile uint32_t POL;          
} CRC_TypeDef;



 
typedef struct 
{
volatile uint32_t CR;      
volatile uint32_t CFGR;    
volatile uint32_t ISR;     
volatile uint32_t ICR;     
} CRS_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;        
  volatile uint32_t SWTRIGR;   
  volatile uint32_t DHR12R1;   
  volatile uint32_t DHR12L1;   
  volatile uint32_t DHR8R1;    
  volatile uint32_t DHR12R2;   
  volatile uint32_t DHR12L2;   
  volatile uint32_t DHR8R2;    
  volatile uint32_t DHR12RD;   
  volatile uint32_t DHR12LD;   
  volatile uint32_t DHR8RD;    
  volatile uint32_t DOR1;      
  volatile uint32_t DOR2;      
  volatile uint32_t SR;        
} DAC_TypeDef;



 

typedef struct
{
  volatile uint32_t IDCODE;        
  volatile uint32_t CR;            
  volatile uint32_t APB1FZ;        
  volatile uint32_t APB2FZ;        
}DBGMCU_TypeDef;



 

typedef struct
{
  volatile uint32_t CCR;           
  volatile uint32_t CNDTR;         
  volatile uint32_t CPAR;          
  volatile uint32_t CMAR;          
} DMA_Channel_TypeDef;

typedef struct
{
  volatile uint32_t ISR;           
  volatile uint32_t IFCR;          
  uint32_t      RESERVED0[40]; 
  volatile uint32_t RMPCR;         
}DMA_TypeDef;



 

typedef struct
{
  volatile uint32_t IMR;           
  volatile uint32_t EMR;           
  volatile uint32_t RTSR;          
  volatile uint32_t FTSR;          
  volatile uint32_t SWIER;         
  volatile uint32_t PR;            
}EXTI_TypeDef;



 
typedef struct
{
  volatile uint32_t ACR;           
  volatile uint32_t KEYR;          
  volatile uint32_t OPTKEYR;       
  volatile uint32_t SR;            
  volatile uint32_t CR;            
  volatile uint32_t AR;            
  volatile uint32_t RESERVED;      
  volatile uint32_t OBR;           
  volatile uint32_t WRPR;          
} FLASH_TypeDef;




 
typedef struct
{
  volatile uint16_t RDP;           
  volatile uint16_t USER;          
  volatile uint16_t DATA0;         
  volatile uint16_t DATA1;         
  volatile uint16_t WRP0;          
  volatile uint16_t WRP1;          
  volatile uint16_t WRP2;          
  volatile uint16_t WRP3;          
} OB_TypeDef;
  



 

typedef struct
{
  volatile uint32_t MODER;         
  volatile uint16_t OTYPER;        
  uint16_t RESERVED0;          
  volatile uint32_t OSPEEDR;       
  volatile uint32_t PUPDR;         
  volatile uint16_t IDR;           
  uint16_t RESERVED1;          
  volatile uint16_t ODR;           
  uint16_t RESERVED2;          
  volatile uint32_t BSRR;          
  volatile uint32_t LCKR;          
  volatile uint32_t AFR[2];        
  volatile uint16_t BRR;           
  uint16_t RESERVED3;          
}GPIO_TypeDef;



 

typedef struct
{
  volatile uint32_t CFGR1;           
       uint32_t RESERVED;        
  volatile uint32_t EXTICR[4];       
  volatile uint32_t CFGR2;           
       uint32_t RESERVED1[25];   
  volatile uint32_t IT_LINE_SR[32];  
       
}SYSCFG_TypeDef;



 

typedef struct
{
  volatile uint32_t CR1;       
  volatile uint32_t CR2;       
  volatile uint32_t OAR1;      
  volatile uint32_t OAR2;      
  volatile uint32_t TIMINGR;   
  volatile uint32_t TIMEOUTR;  
  volatile uint32_t ISR;       
  volatile uint32_t ICR;       
  volatile uint32_t PECR;      
  volatile uint32_t RXDR;      
  volatile uint32_t TXDR;      
}I2C_TypeDef;




 
typedef struct
{
  volatile uint32_t KR;    
  volatile uint32_t PR;    
  volatile uint32_t RLR;   
  volatile uint32_t SR;    
  volatile uint32_t WINR;  
} IWDG_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;    
  volatile uint32_t CSR;   
} PWR_TypeDef;




 
typedef struct
{
  volatile uint32_t CR;          
  volatile uint32_t CFGR;        
  volatile uint32_t CIR;         
  volatile uint32_t APB2RSTR;    
  volatile uint32_t APB1RSTR;    
  volatile uint32_t AHBENR;      
  volatile uint32_t APB2ENR;     
  volatile uint32_t APB1ENR;     
  volatile uint32_t BDCR;         
  volatile uint32_t CSR;         
  volatile uint32_t AHBRSTR;     
  volatile uint32_t CFGR2;       
  volatile uint32_t CFGR3;       
  volatile uint32_t CR2;         
} RCC_TypeDef;



 

typedef struct
{                           
  volatile uint32_t TR;          
  volatile uint32_t DR;          
  volatile uint32_t CR;          
  volatile uint32_t ISR;         
  volatile uint32_t PRER;        
  volatile uint32_t WUTR;        
       uint32_t RESERVED1;   
  volatile uint32_t ALRMAR;      
       uint32_t RESERVED2;   
  volatile uint32_t WPR;         
  volatile uint32_t SSR;         
  volatile uint32_t SHIFTR;      
  volatile uint32_t TSTR;        
  volatile uint32_t TSDR;        
  volatile uint32_t TSSSR;       
  volatile uint32_t CALR;        
  volatile uint32_t TAFCR;       
  volatile uint32_t ALRMASSR;    
       uint32_t RESERVED3;   
       uint32_t RESERVED4;   
  volatile uint32_t BKP0R;       
  volatile uint32_t BKP1R;       
  volatile uint32_t BKP2R;       
  volatile uint32_t BKP3R;       
  volatile uint32_t BKP4R;       
} RTC_TypeDef;

 



 
  
typedef struct
{
  volatile uint16_t CR1;       
  uint16_t  RESERVED0;     
  volatile uint16_t CR2;       
  uint16_t  RESERVED1;     
  volatile uint16_t SR;        
  uint16_t  RESERVED2;     
  volatile uint16_t DR;        
  uint16_t  RESERVED3;     
  volatile uint16_t CRCPR;     
  uint16_t  RESERVED4;     
  volatile uint16_t RXCRCR;    
  uint16_t  RESERVED5;     
  volatile uint16_t TXCRCR;    
  uint16_t  RESERVED6;      
  volatile uint16_t I2SCFGR;   
  uint16_t  RESERVED7;     
  volatile uint16_t I2SPR;     
  uint16_t  RESERVED8;         
} SPI_TypeDef;




 
typedef struct
{
  volatile uint16_t CR1;              
  uint16_t      RESERVED0;        
  volatile uint16_t CR2;              
  uint16_t      RESERVED1;        
  volatile uint16_t SMCR;             
  uint16_t      RESERVED2;        
  volatile uint16_t DIER;             
  uint16_t      RESERVED3;        
  volatile uint16_t SR;               
  uint16_t      RESERVED4;        
  volatile uint16_t EGR;              
  uint16_t      RESERVED5;        
  volatile uint16_t CCMR1;            
  uint16_t      RESERVED6;        
  volatile uint16_t CCMR2;            
  uint16_t      RESERVED7;        
  volatile uint16_t CCER;             
  uint16_t      RESERVED8;        
  volatile uint32_t CNT;              
  volatile uint16_t PSC;              
  uint16_t      RESERVED10;       
  volatile uint32_t ARR;              
  volatile uint16_t RCR;              
  uint16_t      RESERVED12;       
  volatile uint32_t CCR1;             
  volatile uint32_t CCR2;             
  volatile uint32_t CCR3;             
  volatile uint32_t CCR4;             
  volatile uint16_t BDTR;             
  uint16_t      RESERVED17;       
  volatile uint16_t DCR;              
  uint16_t      RESERVED18;       
  volatile uint16_t DMAR;             
  uint16_t      RESERVED19;       
  volatile uint16_t OR;               
  uint16_t      RESERVED20;       
} TIM_TypeDef;



 
typedef struct
{
  volatile uint32_t CR;         
  volatile uint32_t IER;        
  volatile uint32_t ICR;         
  volatile uint32_t ISR;        
  volatile uint32_t IOHCR;      
  volatile uint32_t RESERVED1;  
  volatile uint32_t IOASCR;     
  volatile uint32_t RESERVED2;  
  volatile uint32_t IOSCR;      
  volatile uint32_t RESERVED3;  
  volatile uint32_t IOCCR;      
  volatile uint32_t RESERVED4;  
  volatile uint32_t IOGCSR;     
  volatile uint32_t IOGXCR[8];  
} TSC_TypeDef;



 
  
typedef struct
{
  volatile uint32_t CR1;      
  volatile uint32_t CR2;      
  volatile uint32_t CR3;     
  volatile uint16_t BRR;     
  uint16_t  RESERVED1;     
  volatile uint16_t GTPR;    
  uint16_t  RESERVED2;   
  volatile uint32_t RTOR;      
  volatile uint16_t RQR;     
  uint16_t  RESERVED3;   
  volatile uint32_t ISR;     
  volatile uint32_t ICR;     
  volatile uint16_t RDR;     
  uint16_t  RESERVED4;   
  volatile uint16_t TDR;     
  uint16_t  RESERVED5;   
} USART_TypeDef;




 
typedef struct
{
  volatile uint32_t CR;    
  volatile uint32_t CFR;   
  volatile uint32_t SR;    
} WWDG_TypeDef;




 
  


 


 








 
  


   








 



 
  
  

 
    
 
 
 
 
 
 
 
 
 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 
 
 
 
 
 

 

 



 

 

 

 



 

 
 

 

 

 

 

 

 

 

 

   

 

 

 

 

 

 

 

 

 

 

 
 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 


 
 
 
 
 

 

 

 

 

 

 

 
 
 
 
 
 
 
 

 
 
 
 
 
 

 

 

 

 

 
 
 
 
 

 

 

 

 

 
 
 
 
 
 









 

 

 

 

 

 

 
 
 
 
 

 


 

 

 

 
 
 
 
 

 

 

 





 

 

 

 

 

 
 
 
 
 
 

 

 

 

 

 

 
 
 
 
 

 


 

 

 
                                                               

 

 

 

 


 

 

 

 

 

 

 

 

 

 

 
 
 
 
 
 

 

 

 

 

 

 

 

 

 

 

 

 

 

 
 
 
 
 

 

 

 

 

 

 

 

 

 

 

 

 
 
 
 
 
 

 

 

 

 

 
 
 
 
 

 

 


 

 


 
 
 
 
 
 

 

 
 

 

 

 





 

 


 


 



 

 

 

 

 

 

 

 

 

 



 


   

 
 

 

 
 


 


 

 
 
 
 
 
 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 
 
 
 
 
 

 

 

 

 

 

 

 

 

 
 
 
 
 
 

 



 



  



 



 

 



 



 



 



 

 



 



 



 



 

 



 



 



 



 

 

 

 

 
 
 
 
 
 




 



 







 

 

 

 








 





 








 





 

 

 

 

 

 

 

 

 

 



 


 

 


 
 
 
 
 
 

 

 

 

 


 

 

 

 

 

 

 
 
 
 
 

 


 



 

 

 



 

 

  


























 

 

 























 


























 

 



  



  

 


























 

 


 










































 



 



 
    



 

  

 

 



 



 

 



 

typedef struct
{
  uint8_t NVIC_IRQChannel;             


 

  uint8_t NVIC_IRQChannelPriority;     

 

  FunctionalState NVIC_IRQChannelCmd;  

    
} NVIC_InitTypeDef;






 

 



 



 



 



 



 



 



 



 

 
  

void NVIC_Init(NVIC_InitTypeDef* NVIC_InitStruct);
void NVIC_SystemLPConfig(uint8_t LowPowerMode, FunctionalState NewState);
void SysTick_CLKSourceConfig(uint32_t SysTick_CLKSource);





 



 

 


























 

 


 



 



 
 



 
typedef struct
{
  uint32_t DMA_PeripheralBaseAddr;  

  uint32_t DMA_MemoryBaseAddr;      

  uint32_t DMA_DIR;                
 

  uint32_t DMA_BufferSize;         

 

  uint32_t DMA_PeripheralInc;      
 

  uint32_t DMA_MemoryInc;          
 

  uint32_t DMA_PeripheralDataSize; 
 

  uint32_t DMA_MemoryDataSize;     
 

  uint32_t DMA_Mode;               


 

  uint32_t DMA_Priority;           
 

  uint32_t DMA_M2M;                
 
}DMA_InitTypeDef;

 



 




 




 



 




 



 




 



 




 



 




 



 




 



 




 



 





 



  



 
 
 
 
 
 
 
 


 
 
 
 
 
 




 
  


 









 



 





 



 




 



 

 
 

 
void DMA_DeInit(DMA_Channel_TypeDef* DMAy_Channelx);

 
void DMA_Init(DMA_Channel_TypeDef* DMAy_Channelx, DMA_InitTypeDef* DMA_InitStruct);
void DMA_StructInit(DMA_InitTypeDef* DMA_InitStruct);
void DMA_Cmd(DMA_Channel_TypeDef* DMAy_Channelx, FunctionalState NewState);
void DMA_RemapConfig(DMA_TypeDef* DMAy, uint32_t DMAx_CHy_RemapRequest);

  
void DMA_SetCurrDataCounter(DMA_Channel_TypeDef* DMAy_Channelx, uint16_t DataNumber);
uint16_t DMA_GetCurrDataCounter(DMA_Channel_TypeDef* DMAy_Channelx);

 
void DMA_ITConfig(DMA_Channel_TypeDef* DMAy_Channelx, uint32_t DMA_IT, FunctionalState NewState);
FlagStatus DMA_GetFlagStatus(uint32_t DMAy_FLAG);
void DMA_ClearFlag(uint32_t DMAy_FLAG);
ITStatus DMA_GetITStatus(uint32_t DMAy_IT);
void DMA_ClearITPendingBit(uint32_t DMAy_IT);





 



 

 


























 

 


 



 



 
 





 
typedef enum
{
  GPIO_Mode_IN   = 0x00,  
  GPIO_Mode_OUT  = 0x01,  
  GPIO_Mode_AF   = 0x02,  
  GPIO_Mode_AN   = 0x03   
}GPIOMode_TypeDef;



 



 
typedef enum
{
  GPIO_OType_PP = 0x00,
  GPIO_OType_OD = 0x01
}GPIOOType_TypeDef;




 



 
typedef enum
{
  GPIO_Speed_Level_1  = 0x00,  
  GPIO_Speed_Level_2  = 0x01,  
  GPIO_Speed_Level_3  = 0x03   
}GPIOSpeed_TypeDef;



 



 
typedef enum
{
  GPIO_PuPd_NOPULL = 0x00,
  GPIO_PuPd_UP     = 0x01,
  GPIO_PuPd_DOWN   = 0x02
}GPIOPuPd_TypeDef;



 



 
typedef enum
{ 
  Bit_RESET = 0,
  Bit_SET
}BitAction;



 



 
typedef struct
{
  uint32_t GPIO_Pin;              
 
                                       
  GPIOMode_TypeDef GPIO_Mode;     
 

  GPIOSpeed_TypeDef GPIO_Speed;   
 

  GPIOOType_TypeDef GPIO_OType;   
 

  GPIOPuPd_TypeDef GPIO_PuPd;     
 
}GPIO_InitTypeDef;

 



 



 





 



 



 



 



 


 


 


 



 



 



 


 




 



 

  


 



 

 
 
 
void GPIO_DeInit(GPIO_TypeDef* GPIOx);

 
void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_InitTypeDef* GPIO_InitStruct);
void GPIO_StructInit(GPIO_InitTypeDef* GPIO_InitStruct);
void GPIO_PinLockConfig(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);

 
uint8_t GPIO_ReadInputDataBit(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);
uint16_t GPIO_ReadInputData(GPIO_TypeDef* GPIOx);
uint8_t GPIO_ReadOutputDataBit(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);
uint16_t GPIO_ReadOutputData(GPIO_TypeDef* GPIOx);
void GPIO_SetBits(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);
void GPIO_ResetBits(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);
void GPIO_WriteBit(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin, BitAction BitVal);
void GPIO_Write(GPIO_TypeDef* GPIOx, uint16_t PortVal);

 
void GPIO_PinAFConfig(GPIO_TypeDef* GPIOx, uint16_t GPIO_PinSource, uint8_t GPIO_AF);




 



 

 


























 

 


 



 



 

 



 

typedef struct
{
  uint32_t I2C_Timing;              
 

  uint32_t I2C_AnalogFilter;        
 

  uint32_t I2C_DigitalFilter;       
 

  uint32_t I2C_Mode;                
 

  uint32_t I2C_OwnAddress1;         
 

  uint32_t I2C_Ack;                 
 

  uint32_t I2C_AcknowledgedAddress; 
 
}I2C_InitTypeDef;

 




 

                                         



 




 



 



 



 




 



 




 



 




  



 



 



 




 



 




 



 



 




 




 



 





 



 




 



 




 



 





 



 






 




 


                               
                               



 



 


                              
                               



 



 


                              
                               



 



 

 
 


 
void I2C_DeInit(I2C_TypeDef* I2Cx);
void I2C_Init(I2C_TypeDef* I2Cx, I2C_InitTypeDef* I2C_InitStruct);
void I2C_StructInit(I2C_InitTypeDef* I2C_InitStruct);
void I2C_Cmd(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_SoftwareResetCmd(I2C_TypeDef* I2Cx);
void I2C_ITConfig(I2C_TypeDef* I2Cx, uint32_t I2C_IT, FunctionalState NewState);
void I2C_StretchClockCmd(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_StopModeCmd(I2C_TypeDef* I2Cx, FunctionalState NewState);  
void I2C_DualAddressCmd(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_OwnAddress2Config(I2C_TypeDef* I2Cx, uint16_t Address, uint8_t Mask);
void I2C_GeneralCallCmd(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_SlaveByteControlCmd(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_SlaveAddressConfig(I2C_TypeDef* I2Cx, uint16_t Address);
void I2C_10BitAddressingModeCmd(I2C_TypeDef* I2Cx, FunctionalState NewState);

 
void I2C_AutoEndCmd(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_ReloadCmd(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_NumberOfBytesConfig(I2C_TypeDef* I2Cx, uint8_t Number_Bytes);
void I2C_MasterRequestConfig(I2C_TypeDef* I2Cx, uint16_t I2C_Direction);
void I2C_GenerateSTART(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_GenerateSTOP(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_10BitAddressHeaderCmd(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_AcknowledgeConfig(I2C_TypeDef* I2Cx, FunctionalState NewState);
uint8_t I2C_GetAddressMatched(I2C_TypeDef* I2Cx);
uint16_t I2C_GetTransferDirection(I2C_TypeDef* I2Cx);
void I2C_TransferHandling(I2C_TypeDef* I2Cx, uint16_t Address, uint8_t Number_Bytes, uint32_t ReloadEndMode, uint32_t StartStopMode);

 
void I2C_SMBusAlertCmd(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_ClockTimeoutCmd(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_ExtendedClockTimeoutCmd(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_IdleClockTimeoutCmd(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_TimeoutAConfig(I2C_TypeDef* I2Cx, uint16_t Timeout);
void I2C_TimeoutBConfig(I2C_TypeDef* I2Cx, uint16_t Timeout);
void I2C_CalculatePEC(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_PECRequestCmd(I2C_TypeDef* I2Cx, FunctionalState NewState);
uint8_t I2C_GetPEC(I2C_TypeDef* I2Cx);

 
uint32_t I2C_ReadRegister(I2C_TypeDef* I2Cx, uint8_t I2C_Register);

 
void I2C_SendData(I2C_TypeDef* I2Cx, uint8_t Data);
uint8_t I2C_ReceiveData(I2C_TypeDef* I2Cx);

 
void I2C_DMACmd(I2C_TypeDef* I2Cx, uint32_t I2C_DMAReq, FunctionalState NewState);

 
FlagStatus I2C_GetFlagStatus(I2C_TypeDef* I2Cx, uint32_t I2C_FLAG);
void I2C_ClearFlag(I2C_TypeDef* I2Cx, uint32_t I2C_FLAG);
ITStatus I2C_GetITStatus(I2C_TypeDef* I2Cx, uint32_t I2C_IT);
void I2C_ClearITPendingBit(I2C_TypeDef* I2Cx, uint32_t I2C_IT);






 



 

 


























 

 


 



 



 

 

typedef struct
{
  uint32_t SYSCLK_Frequency;
  uint32_t HCLK_Frequency;
  uint32_t PCLK_Frequency;
  uint32_t ADCCLK_Frequency;
  uint32_t CECCLK_Frequency;
  uint32_t I2C1CLK_Frequency;
  uint32_t USART1CLK_Frequency;
  uint32_t USART2CLK_Frequency;  
  uint32_t USART3CLK_Frequency;  
  uint32_t USBCLK_Frequency;     
}RCC_ClocksTypeDef;

 



 



 




  
 


 




  



 



 



 



 
 


 




 



 



  



 



 
  


 

 




 



 





 



 





 




 





 



 








 
         


 







 
  


 



 



 




 



 



 
  


 





 



 





  



 




 



 




  



 



  



 





 



 

 
 

 
void RCC_DeInit(void);

 
void RCC_HSEConfig(uint8_t RCC_HSE);
ErrorStatus RCC_WaitForHSEStartUp(void);
void RCC_AdjustHSICalibrationValue(uint8_t HSICalibrationValue);
void RCC_HSICmd(FunctionalState NewState);
void RCC_AdjustHSI14CalibrationValue(uint8_t HSI14CalibrationValue);
void RCC_HSI14Cmd(FunctionalState NewState);
void RCC_HSI14ADCRequestCmd(FunctionalState NewState);
void RCC_LSEConfig(uint32_t RCC_LSE);
void RCC_LSEDriveConfig(uint32_t RCC_LSEDrive);
void RCC_LSICmd(FunctionalState NewState);
void RCC_PLLConfig(uint32_t RCC_PLLSource, uint32_t RCC_PLLMul);
void RCC_PLLCmd(FunctionalState NewState);
void RCC_HSI48Cmd(FunctionalState NewState);  
uint32_t RCC_GetHSI48CalibrationValue(void);  
void RCC_PREDIV1Config(uint32_t RCC_PREDIV1_Div);
void RCC_ClockSecuritySystemCmd(FunctionalState NewState);
void RCC_MCOConfig(uint8_t RCC_MCOSource,uint32_t RCC_MCOPrescaler);

 
void RCC_SYSCLKConfig(uint32_t RCC_SYSCLKSource);
uint8_t RCC_GetSYSCLKSource(void);
void RCC_HCLKConfig(uint32_t RCC_SYSCLK);
void RCC_PCLKConfig(uint32_t RCC_HCLK);
void RCC_ADCCLKConfig(uint32_t RCC_ADCCLK); 

 
void RCC_CECCLKConfig(uint32_t RCC_CECCLK);
void RCC_I2CCLKConfig(uint32_t RCC_I2CCLK);
void RCC_USARTCLKConfig(uint32_t RCC_USARTCLK);
void RCC_USBCLKConfig(uint32_t RCC_USBCLK);  
void RCC_GetClocksFreq(RCC_ClocksTypeDef* RCC_Clocks);

 
void RCC_RTCCLKConfig(uint32_t RCC_RTCCLKSource);
void RCC_RTCCLKCmd(FunctionalState NewState);
void RCC_BackupResetCmd(FunctionalState NewState);

void RCC_AHBPeriphClockCmd(uint32_t RCC_AHBPeriph, FunctionalState NewState);
void RCC_APB2PeriphClockCmd(uint32_t RCC_APB2Periph, FunctionalState NewState);
void RCC_APB1PeriphClockCmd(uint32_t RCC_APB1Periph, FunctionalState NewState);

void RCC_AHBPeriphResetCmd(uint32_t RCC_AHBPeriph, FunctionalState NewState);
void RCC_APB2PeriphResetCmd(uint32_t RCC_APB2Periph, FunctionalState NewState);
void RCC_APB1PeriphResetCmd(uint32_t RCC_APB1Periph, FunctionalState NewState);

 
void RCC_ITConfig(uint8_t RCC_IT, FunctionalState NewState);
FlagStatus RCC_GetFlagStatus(uint8_t RCC_FLAG);
void RCC_ClearFlag(void);
ITStatus RCC_GetITStatus(uint8_t RCC_IT);
void RCC_ClearITPendingBit(uint8_t RCC_IT);





 



  

 


























 

 


 



 



  

 

   
   


  

typedef struct
{
  uint32_t USART_BaudRate;            


 

  uint32_t USART_WordLength;          
 

  uint32_t USART_StopBits;            
 

  uint32_t USART_Parity;              




 
 
  uint32_t USART_Mode;                
 

  uint32_t USART_HardwareFlowControl; 

 
} USART_InitTypeDef;



  

typedef struct
{
  uint32_t USART_Clock;             
 

  uint32_t USART_CPOL;              
 

  uint32_t USART_CPHA;              
 

  uint32_t USART_LastBit;           

 
} USART_ClockInitTypeDef;

 



  





  



  



  



  



  



  



  



  



  



  



  
  


  



 
  



  



 




 



 



 
  


 




  



 



  



 



 



  



  




  



  



 
  


 



 



  



 



  



 




  



 



  



 



  


 




  



 



  









 






 



 




  



  

 
 

 
void USART_DeInit(USART_TypeDef* USARTx);
void USART_Init(USART_TypeDef* USARTx, USART_InitTypeDef* USART_InitStruct);
void USART_StructInit(USART_InitTypeDef* USART_InitStruct);
void USART_ClockInit(USART_TypeDef* USARTx, USART_ClockInitTypeDef* USART_ClockInitStruct);
void USART_ClockStructInit(USART_ClockInitTypeDef* USART_ClockInitStruct);
void USART_Cmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_DirectionModeCmd(USART_TypeDef* USARTx, uint32_t USART_DirectionMode, FunctionalState NewState);
void USART_SetPrescaler(USART_TypeDef* USARTx, uint8_t USART_Prescaler);  
void USART_OverSampling8Cmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_OneBitMethodCmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_MSBFirstCmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_DataInvCmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_InvPinCmd(USART_TypeDef* USARTx, uint32_t USART_InvPin, FunctionalState NewState);
void USART_SWAPPinCmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_ReceiverTimeOutCmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_SetReceiverTimeOut(USART_TypeDef* USARTx, uint32_t USART_ReceiverTimeOut);

 
void USART_STOPModeCmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_StopModeWakeUpSourceConfig(USART_TypeDef* USARTx, uint32_t USART_WakeUpSource);  

 
void USART_AutoBaudRateCmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_AutoBaudRateConfig(USART_TypeDef* USARTx, uint32_t USART_AutoBaudRate);

 
void USART_SendData(USART_TypeDef* USARTx, uint16_t Data);
uint16_t USART_ReceiveData(USART_TypeDef* USARTx);

 
void USART_SetAddress(USART_TypeDef* USARTx, uint8_t USART_Address);
void USART_MuteModeWakeUpConfig(USART_TypeDef* USARTx, uint32_t USART_WakeUp);
void USART_MuteModeCmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_AddressDetectionConfig(USART_TypeDef* USARTx, uint32_t USART_AddressLength);

 
void USART_LINBreakDetectLengthConfig(USART_TypeDef* USARTx, uint32_t USART_LINBreakDetectLength);  
void USART_LINCmd(USART_TypeDef* USARTx, FunctionalState NewState);  

 
void USART_HalfDuplexCmd(USART_TypeDef* USARTx, FunctionalState NewState);

 
void USART_SmartCardCmd(USART_TypeDef* USARTx, FunctionalState NewState);  
void USART_SmartCardNACKCmd(USART_TypeDef* USARTx, FunctionalState NewState);  
void USART_SetGuardTime(USART_TypeDef* USARTx, uint8_t USART_GuardTime);  
void USART_SetAutoRetryCount(USART_TypeDef* USARTx, uint8_t USART_AutoCount);  
void USART_SetBlockLength(USART_TypeDef* USARTx, uint8_t USART_BlockLength);  

 
void USART_IrDAConfig(USART_TypeDef* USARTx, uint32_t USART_IrDAMode);  
void USART_IrDACmd(USART_TypeDef* USARTx, FunctionalState NewState);  

 
void USART_DECmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_DEPolarityConfig(USART_TypeDef* USARTx, uint32_t USART_DEPolarity);
void USART_SetDEAssertionTime(USART_TypeDef* USARTx, uint32_t USART_DEAssertionTime);
void USART_SetDEDeassertionTime(USART_TypeDef* USARTx, uint32_t USART_DEDeassertionTime);

 
void USART_DMACmd(USART_TypeDef* USARTx, uint32_t USART_DMAReq, FunctionalState NewState);
void USART_DMAReceptionErrorConfig(USART_TypeDef* USARTx, uint32_t USART_DMAOnError);

 
void USART_ITConfig(USART_TypeDef* USARTx, uint32_t USART_IT, FunctionalState NewState);
void USART_RequestCmd(USART_TypeDef* USARTx, uint32_t USART_Request, FunctionalState NewState);
void USART_OverrunDetectionConfig(USART_TypeDef* USARTx, uint32_t USART_OVRDetection);
FlagStatus USART_GetFlagStatus(USART_TypeDef* USARTx, uint32_t USART_FLAG);
void USART_ClearFlag(USART_TypeDef* USARTx, uint32_t USART_FLAG);
ITStatus USART_GetITStatus(USART_TypeDef* USARTx, uint32_t USART_IT);
void USART_ClearITPendingBit(USART_TypeDef* USARTx, uint32_t USART_IT);





  



  

 
 
 

 
 

 


 



 


 
  




 

  

 

 



 



 

 



 
  
typedef struct
{
  uint32_t ADC_Resolution;                  
 

  FunctionalState ADC_ContinuousConvMode;   

 

  uint32_t ADC_ExternalTrigConvEdge;        

 

  uint32_t ADC_ExternalTrigConv;            

 

  uint32_t ADC_DataAlign;                   
 

  uint32_t  ADC_ScanDirection;              

 
}ADC_InitTypeDef;


 



  



  
   




 
  


  



  



  




  



  



  



  

 

 

 

 



  



  
  



 



  
  



  



  
  



  
    


  
  




  
  


  




  



  
  



  



  
  





  
  


  
  
 





  



  
  





 
  


  

 
  

 
void ADC_DeInit(ADC_TypeDef* ADCx);

  
void ADC_Init(ADC_TypeDef* ADCx, ADC_InitTypeDef* ADC_InitStruct);
void ADC_StructInit(ADC_InitTypeDef* ADC_InitStruct);
void ADC_ClockModeConfig(ADC_TypeDef* ADCx, uint32_t ADC_ClockMode);
void ADC_Cmd(ADC_TypeDef* ADCx, FunctionalState NewState);

 
void ADC_JitterCmd(ADC_TypeDef* ADCx, uint32_t ADC_JitterOff, FunctionalState NewState);

 
void ADC_AutoPowerOffCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
void ADC_WaitModeCmd(ADC_TypeDef* ADCx, FunctionalState NewState);

 
void ADC_AnalogWatchdogCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
void ADC_AnalogWatchdogThresholdsConfig(ADC_TypeDef* ADCx, uint16_t HighThreshold,uint16_t LowThreshold);
void ADC_AnalogWatchdogSingleChannelConfig(ADC_TypeDef* ADCx, uint32_t ADC_AnalogWatchdog_Channel);
void ADC_AnalogWatchdogSingleChannelCmd(ADC_TypeDef* ADCx, FunctionalState NewState);

 
void ADC_TempSensorCmd(FunctionalState NewState);
void ADC_VrefintCmd(FunctionalState NewState);
void ADC_VbatCmd(FunctionalState NewState);  

 
void ADC_ChannelConfig(ADC_TypeDef* ADCx, uint32_t ADC_Channel, uint32_t ADC_SampleTime);
void ADC_ContinuousModeCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
void ADC_DiscModeCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
void ADC_OverrunModeCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
uint32_t ADC_GetCalibrationFactor(ADC_TypeDef* ADCx);
void ADC_StopOfConversion(ADC_TypeDef* ADCx);
void ADC_StartOfConversion(ADC_TypeDef* ADCx);
uint16_t ADC_GetConversionValue(ADC_TypeDef* ADCx);

 
void ADC_DMACmd(ADC_TypeDef* ADCx, FunctionalState NewState);
void ADC_DMARequestModeConfig(ADC_TypeDef* ADCx, uint32_t ADC_DMARequestMode);

 
void ADC_ITConfig(ADC_TypeDef* ADCx, uint32_t ADC_IT, FunctionalState NewState);
FlagStatus ADC_GetFlagStatus(ADC_TypeDef* ADCx, uint32_t ADC_FLAG);
void ADC_ClearFlag(ADC_TypeDef* ADCx, uint32_t ADC_FLAG);
ITStatus ADC_GetITStatus(ADC_TypeDef* ADCx, uint32_t ADC_IT);
void ADC_ClearITPendingBit(ADC_TypeDef* ADCx, uint32_t ADC_IT);





  



  

 



 




 

 
 
 

 

 
 
 
 



 



















 





 
void ADC_DeInit(ADC_TypeDef* ADCx)
{
   
  ((void)0);

  if(ADCx == ((ADC_TypeDef *) (((uint32_t)0x40000000) + 0x00012400)))
  {
     
    RCC_APB2PeriphResetCmd(((uint32_t)0x00000200), ENABLE);

     
    RCC_APB2PeriphResetCmd(((uint32_t)0x00000200), DISABLE);
  }
}











 
void ADC_Init(ADC_TypeDef* ADCx, ADC_InitTypeDef* ADC_InitStruct)
{
  uint32_t tmpreg = 0;

   
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0); 

   
  tmpreg = ADCx->CFGR1;

   
  tmpreg &= ((uint32_t)0xFFFFD203);

   

   
   
   
   
   
   
 
  tmpreg  |= (uint32_t)(ADC_InitStruct->ADC_Resolution | ((uint32_t)(ADC_InitStruct->ADC_ContinuousConvMode) << 13) |
             ADC_InitStruct->ADC_ExternalTrigConvEdge | ADC_InitStruct->ADC_ExternalTrigConv |
             ADC_InitStruct->ADC_DataAlign | ADC_InitStruct->ADC_ScanDirection);

   
  ADCx->CFGR1 = tmpreg;
}









 
void ADC_StructInit(ADC_InitTypeDef* ADC_InitStruct)
{
   
   
  ADC_InitStruct->ADC_Resolution = ((uint32_t)0x00000000);

    
  ADC_InitStruct->ADC_ContinuousConvMode = DISABLE;

   
  ADC_InitStruct->ADC_ExternalTrigConvEdge = ((uint32_t)0x00000000);

   
  ADC_InitStruct->ADC_ExternalTrigConv = ((uint32_t)0x00000000);

   
  ADC_InitStruct->ADC_DataAlign = ((uint32_t)0x00000000);

   
  ADC_InitStruct->ADC_ScanDirection = ((uint32_t)0x00000000);
}







 
void ADC_Cmd(ADC_TypeDef* ADCx, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);

  if (NewState != DISABLE)
  {
     
    ADCx->CR |= (uint32_t)((uint32_t)0x00000001);
  }
  else
  {
     
    ADCx->CR |= (uint32_t)((uint32_t)0x00000002);
  }
}












 
void ADC_ClockModeConfig(ADC_TypeDef* ADCx, uint32_t ADC_ClockMode)
{
   
  ((void)0);
  ((void)0);

     
    ADCx->CFGR2 = (uint32_t)ADC_ClockMode;

}













 
void ADC_JitterCmd(ADC_TypeDef* ADCx, uint32_t ADC_JitterOff, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);
  ((void)0);

  if (NewState != DISABLE)
  {
     
    ADCx->CFGR2 |= (uint32_t)ADC_JitterOff;
  }
  else
  {
     
    ADCx->CFGR2 &= (uint32_t)(~ADC_JitterOff);
  }
}



 


















 














 
void ADC_AutoPowerOffCmd(ADC_TypeDef* ADCx, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);
  
  if (NewState != DISABLE)
  {
     
    ADCx->CFGR1 |= ((uint32_t)0x00008000);
  }
  else
  {
     
    ADCx->CFGR1 &= (uint32_t)~((uint32_t)0x00008000);
  }
}
















 
void ADC_WaitModeCmd(ADC_TypeDef* ADCx, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);
  
  if (NewState != DISABLE)
  {
     
    ADCx->CFGR1 |= ((uint32_t)0x00004000);
  }
  else
  {
     
    ADCx->CFGR1 &= (uint32_t)~((uint32_t)0x00004000);
  }
}



 






















 







 
void ADC_AnalogWatchdogCmd(ADC_TypeDef* ADCx, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);
  
  if (NewState != DISABLE)
  {
     
    ADCx->CFGR1 |= ((uint32_t)0x00800000);
  }
  else
  {
     
    ADCx->CFGR1 &= (uint32_t)~((uint32_t)0x00800000);
  }
}









 
void ADC_AnalogWatchdogThresholdsConfig(ADC_TypeDef* ADCx, uint16_t HighThreshold,
                                        uint16_t LowThreshold)
{
   
  ((void)0);
  ((void)0);
  ((void)0);

   
  ADCx->TR = LowThreshold | ((uint32_t)HighThreshold << 16);

}




























 
void ADC_AnalogWatchdogSingleChannelConfig(ADC_TypeDef* ADCx, uint32_t ADC_AnalogWatchdog_Channel)
{
  uint32_t tmpreg = 0;

   
  ((void)0);
  ((void)0);

   
  tmpreg = ADCx->CFGR1;

   
  tmpreg &= ~((uint32_t)0x7C000000);

   
  tmpreg |= ADC_AnalogWatchdog_Channel;

   
  ADCx->CFGR1 = tmpreg;
}







 
void ADC_AnalogWatchdogSingleChannelCmd(ADC_TypeDef* ADCx, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);

  if (NewState != DISABLE)
  {
     
    ADCx->CFGR1 |= ((uint32_t)0x00400000);
  }
  else
  {
     
    ADCx->CFGR1 &= (uint32_t)~((uint32_t)0x00400000);
  }
}



 























 






 
void ADC_TempSensorCmd(FunctionalState NewState)
{
   
  ((void)0);

  if (NewState != DISABLE)
  {
     
    ((ADC_Common_TypeDef *) (((uint32_t)0x40000000) + 0x00012708))->CCR |= (uint32_t)((uint32_t)0x00800000);
  }
  else
  {
     
    ((ADC_Common_TypeDef *) (((uint32_t)0x40000000) + 0x00012708))->CCR &= (uint32_t)(~((uint32_t)0x00800000));
  }
}






 
void ADC_VrefintCmd(FunctionalState NewState)
{
   
  ((void)0);

  if (NewState != DISABLE)
  {
     
    ((ADC_Common_TypeDef *) (((uint32_t)0x40000000) + 0x00012708))->CCR |= (uint32_t)((uint32_t)0x00400000);
  }
  else
  {
     
    ((ADC_Common_TypeDef *) (((uint32_t)0x40000000) + 0x00012708))->CCR &= (uint32_t)(~((uint32_t)0x00400000));
  }
}







 
void ADC_VbatCmd(FunctionalState NewState)
{
   
  ((void)0);

  if (NewState != DISABLE)
  {
     
    ((ADC_Common_TypeDef *) (((uint32_t)0x40000000) + 0x00012708))->CCR |= (uint32_t)((uint32_t)0x01000000);
  }
  else
  {
     
    ((ADC_Common_TypeDef *) (((uint32_t)0x40000000) + 0x00012708))->CCR &= (uint32_t)(~((uint32_t)0x01000000));
  }
}



 



































 




































 
void ADC_ChannelConfig(ADC_TypeDef* ADCx, uint32_t ADC_Channel, uint32_t ADC_SampleTime)
{
  uint32_t tmpreg = 0;

   
  ((void)0);
  ((void)0);
  ((void)0);

   
  ADCx->CHSELR |= (uint32_t)ADC_Channel;

   
  tmpreg &= ~((uint32_t)0x00000007);

   
  tmpreg |= (uint32_t)ADC_SampleTime;

   
  ADCx->SMPR = tmpreg ;
}










 
void ADC_ContinuousModeCmd(ADC_TypeDef* ADCx, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);

    if (NewState != DISABLE)
  {
     
    ADCx->CFGR1 |= (uint32_t)((uint32_t)0x00002000);
  }
  else
  {
     
    ADCx->CFGR1 &= (uint32_t)(~((uint32_t)0x00002000));
  }
}










 
void ADC_DiscModeCmd(ADC_TypeDef* ADCx, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);

    if (NewState != DISABLE)
  {
     
    ADCx->CFGR1 |= (uint32_t)((uint32_t)0x00010000);
  }
  else
  {
     
    ADCx->CFGR1 &= (uint32_t)(~((uint32_t)0x00010000));
  }
}







 
void ADC_OverrunModeCmd(ADC_TypeDef* ADCx, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);

    if (NewState != DISABLE)
  {
     
    ADCx->CFGR1 |= (uint32_t)((uint32_t)0x00001000);
  }
  else
  {
     
    ADCx->CFGR1 &= (uint32_t)(~((uint32_t)0x00001000));
  }
}







 
uint32_t ADC_GetCalibrationFactor(ADC_TypeDef* ADCx)
{
  uint32_t tmpreg = 0, calibrationcounter = 0, calibrationstatus = 0;

   
  ((void)0);
  
   
  ADCx->CR |= (uint32_t)((uint32_t)0x80000000);
  
   
  do
  {
    calibrationstatus = ADCx->CR & ((uint32_t)0x80000000);
    calibrationcounter++;  
  } while((calibrationcounter != ((uint32_t)0x0000F000)) && (calibrationstatus != 0x00));
    
  if((uint32_t)(ADCx->CR & ((uint32_t)0x80000000)) == RESET)
  {
     
    tmpreg = ADCx->DR;
  }
  else
  {
     
    tmpreg = 0x00000000;
  }
  return tmpreg;
}







 
void ADC_StopOfConversion(ADC_TypeDef* ADCx)
{
   
  ((void)0);
  
  ADCx->CR |= (uint32_t)((uint32_t)0x00000010);
}







 
void ADC_StartOfConversion(ADC_TypeDef* ADCx)
{
   
  ((void)0);
  
  ADCx->CR |= (uint32_t)((uint32_t)0x00000004);
}





 
uint16_t ADC_GetConversionValue(ADC_TypeDef* ADCx)
{
   
  ((void)0);

   
  return (uint16_t) ADCx->DR;
}



 























 







 
void ADC_DMACmd(ADC_TypeDef* ADCx, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);

  if (NewState != DISABLE)
  {
     
    ADCx->CFGR1 |= (uint32_t)((uint32_t)0x00000001);
  }
  else
  {
     
    ADCx->CFGR1 &= (uint32_t)(~((uint32_t)0x00000001));
  }
}









 
void ADC_DMARequestModeConfig(ADC_TypeDef* ADCx, uint32_t ADC_DMARequestMode)
{
   
  ((void)0);

  ADCx->CFGR1 &= (uint32_t)~((uint32_t)0x00000002);
  ADCx->CFGR1 |= (uint32_t)ADC_DMARequestMode;
}



 















































































 















 
void ADC_ITConfig(ADC_TypeDef* ADCx, uint32_t ADC_IT, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);
  ((void)0); 

  if (NewState != DISABLE)
  {
     
    ADCx->IER |= ADC_IT;
  }
  else
  {
     
    ADCx->IER &= (~(uint32_t)ADC_IT);
  }
}


















 
FlagStatus ADC_GetFlagStatus(ADC_TypeDef* ADCx, uint32_t ADC_FLAG)
{
  FlagStatus bitstatus = RESET;
  uint32_t tmpreg = 0;

   
  ((void)0);
  ((void)0);

  if((uint32_t)(ADC_FLAG & 0x01000000))
  {
    tmpreg = ADCx->CR & 0xFEFFFFFF;
  }
  else
  {
    tmpreg = ADCx->ISR;
  }
  
   
  if ((tmpreg & ADC_FLAG) != (uint32_t)RESET)
  {
     
    bitstatus = SET;
  }
  else
  {
     
    bitstatus = RESET;
  }
   
  return  bitstatus;
}













 
void ADC_ClearFlag(ADC_TypeDef* ADCx, uint32_t ADC_FLAG)
{
   
  ((void)0);
  ((void)0);

   
  ADCx->ISR = (uint32_t)ADC_FLAG;
}













 
ITStatus ADC_GetITStatus(ADC_TypeDef* ADCx, uint32_t ADC_IT)
{
  ITStatus bitstatus = RESET;
  uint32_t enablestatus = 0;

   
  ((void)0);
  ((void)0);

   
  enablestatus = (uint32_t)(ADCx->IER & ADC_IT); 

   
  if (((uint32_t)(ADCx->ISR & ADC_IT) != (uint32_t)RESET) && (enablestatus != (uint32_t)RESET))
  {
     
    bitstatus = SET;
  }
  else
  {
     
    bitstatus = RESET;
  }
   
  return  bitstatus;
}













 
void ADC_ClearITPendingBit(ADC_TypeDef* ADCx, uint32_t ADC_IT)
{
   
  ((void)0);
  ((void)0);

   
  ADCx->ISR = (uint32_t)ADC_IT; 
}



 



  



  



  

 
