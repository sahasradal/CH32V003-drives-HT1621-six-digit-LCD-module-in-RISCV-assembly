

#riscv32-unknown-elf-as -g HT1621_test_ver1.S -o HT1621_test_ver1.O
#riscv32-unknown-elf-ld -T CH32V003.ld -Map=final.map HT1621_test_ver1.O
#riscv32-unknown-elf-objcopy -O ihex a.out HT1621_test_ver1.hex
# new linker version
#.\riscv32-unknown-elf-as -g HT1621_test_ver1.S -o HT1621_test_ver1.O
#.\riscv32-unknown-elf-ld -T CH32V003.ld --Map final.map HT1621_test_ver1.O
#.\riscv32-unknown-elf-objcopy -O ihex a.out HT1621_test_ver1.hex


.equ SRAM_start, 0x20000000
.equ SRAM_end, 0x20000800
.equ STACK, 0x20000800

.equ TIM2_BASE, 0x40000000
.equ W_WDG_BASE, 0x40002C00
.equ I_WDG_BASE, 0x40003000
.equ I2C_BASE, 0x40005400
.equ PWR_BASE, 0x40007000
.equ AFIO_BASE, 0x40010000
.equ EXTI_BASE, 0x40010400
.equ PORTA_BASE, 0x40010800
.equ PORTC_BASE, 0x40011000
.equ PORTD_BASE, 0x40011400
.equ ADC_BASE, 0x40012400
.equ TIM1_BASE, 0x40012C00
.equ SPI_BASE, 0x40013000
.equ USART_BASE, 0x40013800
.equ DMA_BASE, 0x40020000
.equ RCC_BASE, 0x40021000
.equ FLASH_INTERFACE_BASE, 0x40022000
.equ EXTENDED_MEM_BASE, 0x40023800
.equ CORE_PRIVATE_BASE, 0xE0000000
.equ FLASH_BASE, 0x08000000


.equ R32_PWR_CTLR, 0x40007000 		#Power control register
.equ R32_PWR_CSR, 0x40007004 		#Power control/status register
.equ R32_PWR_AWUCSR, 0x40007008 	#Auto-wakeup control/status register
.equ R32_PWR_AWUWR, 0x4000700C		#Auto-wakeup window comparison value register
.equ R32_PWR_AWUPSC, 0x40007010 	#Auto-wakeup crossover factor register
.equ R32_RCC_CTLR, 0x40021000 		#Clock control register 0x0000xx83
.equ R32_RCC_CFGR0, 0x40021004 		#Clock configuration register 0 0x00000000
.equ R32_RCC_INTR, 0x40021008 		#Clock interrupt register 0x00000000
.equ R32_RCC_APB2PRSTR, 0x4002100C 	#APB2 peripheral reset register 0x00000000
.equ R32_RCC_APB1PRSTR, 0x40021010 	# APB1 peripheral reset register 0x00000000
.equ R32_RCC_AHBPCENR, 0x40021014 	#AHB peripheral clock enable register 0x00000014
.equ R32_RCC_APB2PCENR, 0x40021018 	#APB2 peripheral clock enable register 0x00000000
.equ R32_RCC_APB1PCENR, 0x4002101C 	#APB1 peripheral clock enable register 0x00000000
.equ R32_RCC_RSTSCKR, 0x40021024   	#Control/status register

.equ R16_IWDG_CTLR, 0x40003000 		#Control register 0x0000
.equ R16_IWDG_PSCR, 0x40003004		#Prescaler register 0x0000
.equ R16_IWDG_RLDR, 0x40003008 		#Reload register 0x0FFF
.equ R16_IWDG_STATR, 0x4000300C 	#Status register

.equ R16_WWDG_CTLR, 0x40002C00 		#Control register 0x007F
.equ R16_WWDG_CFGR, 0x40002C04 		#Configuration Register 0x007F
.equ R16_WWDG_STATR, 0x40002C08 	#Status Register

.equ R32_EXTI_INTENR, 0x40010400 	#Interrupt enable register 0x00000000
.equ R32_EXTI_EVENR,  0x40010404 	#Event enable register 0x00000000
.equ R32_EXTI_RTENR, 0x40010408 	#Rising edge trigger enable register 0x00000000
.equ R32_EXTI_FTENR, 0x4001040C 	#Falling edge trigger enable register 0x00000000
.equ R32_EXTI_SWIEVR, 0x40010410 	#Soft interrupt event register 0x00000000
.equ R32_EXTI_INTFR, 0x40010414 	#Interrupt flag register

.equ R32_PFIC_ISR1, 0xE000E000 		#PFIC interrupt enable status register 1
.equ R32_PFIC_ISR2, 0xE000E004 		#PFIC interrupt enable status register 2 
.equ R32_PFIC_IPR1, 0xE000E020 		#PFIC interrupt pending status register 1 
.equ R32_PFIC_IPR2, 0xE000E024 		#PFIC interrupt pending status register 2 
.equ R32_PFIC_ITHRESDR, 0xE000E040 	#PFIC interrupt priority threshold configuration register
.equ R32_PFIC_CFGR, 0xE000E048 		#PFIC interrupt configuration register
.equ R32_PFIC_GISR, 0xE000E04C 		#PFIC interrupt global status register 
.equ R32_PFIC_VTFIDR, 0xE000E050 	#PFIC VTF interrupt ID configuration register
.equ R32_PFIC_VTFADDRR0, 0xE000E060 	#PFIC VTF interrupt 0 offset address register
.equ R32_PFIC_VTFADDRR1, 0xE000E064 	#PFIC VTF interrupt 1 offset address register
.equ R32_PFIC_IENR1, 0xE000E100		#PFIC interrupt enable setting register 1 
.equ R32_PFIC_IENR2, 0xE000E104 	#PFIC interrupt enable setting register 2 
.equ R32_PFIC_IRER1, 0xE000E180 	#PFIC interrupt enable clear register 1 
.equ R32_PFIC_IRER2, 0xE000E184 	#PFIC interrupt enable clear register 2 
.equ R32_PFIC_IPSR1, 0xE000E200 	#PFIC interrupt pending setting register 1 
.equ R32_PFIC_IPSR2, 0xE000E204 	#PFIC interrupt pending setting register 2 
.equ R32_PFIC_IPRR1, 0xE000E280 	#PFIC interrupt hang clear register 1 
.equ R32_PFIC_IPRR2, 0xE000E284 	#PFIC interrupt hang clear register 2 
.equ R32_PFIC_IACTR1, 0xE000E300 	#PFIC interrupt activation status register1
.equ R32_PFIC_IACTR2, 0xE000E304 	#PFIC interrupt activation status register2
.equ R32_PFIC_IPRIOR1, 0xE000E400 	#PFIC interrupt priority configuration register
.equ R32_PFIC_IPRIOR2, 0xE000E401 	#PFIC interrupt priority configuration register
.equ R32_PFIC_SCTLR, 0xE000ED10 	#PFIC system control register

.equ INTSYSCR, 0x804 			#Interrupt System Control Register
.equ MTVEC, 0x305 			#Exception Entry Base Address Register
.equ DBGMCU_CR, 0x7C0  			#Debug MCU Configuration Register (CSR)
 
.equ R32_STK_CTLR, 0xE000F000 		#System count control register 
.equ R32_STK_SR, 0xE000F004 		#System count status register 
.equ R32_STK_CNTR, 0xE000F008		# System counter low register 
.equ R32_STK_CMPR, 0xE000F010 		#Counting comparison low register


.equ R32_GPIOA_CFGLR, 0x40010800 	#PA port configuration register low 0x44444444
.equ R32_GPIOC_CFGLR, 0x40011000 	#PC port configuration register low 0x44444444
.equ R32_GPIOD_CFGLR, 0x40011400 	#PD port configuration register low 0x44444444
.equ R32_GPIOA_INDR, 0x40010808 	#PA port input data register 0x0000XXXX
.equ R32_GPIOC_INDR, 0x40011008 	#PC port input data register 0x0000XXXX
.equ R32_GPIOD_INDR, 0x40011408 	#PD port input data register 0x0000XXXX
.equ R32_GPIOA_OUTDR, 0x4001080C 	#PA port output data register 0x00000000
.equ R32_GPIOC_OUTDR, 0x4001100C 	#PC port output data register 0x00000000
.equ R32_GPIOD_OUTDR, 0x4001140C 	#PD port output data register 0x00000000
.equ R32_GPIOA_BSHR, 0x40010810 	#PA port set/reset register 0x00000000
.equ R32_GPIOC_BSHR, 0x40011010 	#PC port set/reset register 0x00000000
.equ R32_GPIOD_BSHR, 0x40011410 	#PD port set/reset register 0x00000000
.equ R32_GPIOA_BCR, 0x40010814 		#PA port reset register 0x00000000
.equ R32_GPIOC_BCR, 0x40011014 		#PC port reset register
.equ R32_GPIOD_BCR, 0x40011414 		#PD port reset register 0x00000000
.equ R32_GPIOA_LCKR, 0x40010818 	#PA port configuration lock register 0x00000000
.equ R32_GPIOC_LCKR, 0x40011018 	#PC port configuration lock register 0x00000000
.equ R32_GPIOD_LCKR, 0x40011418 	#PD port configuration lock register 
.equ R32_AFIO_PCFR1, 0x40010004		#AFIO Remap Register 1
.equ R32_AFIO_EXTICR, 0x40010008 	#External interrupt configuration register 1

.equ R32_DMA_INTFR, 0x40020000 		#DMA interrupt status register 0x00000000
.equ R32_DMA_INTFCR, 0x40020004 	#DMA interrupt flag clear register 0x00000000
.equ R32_DMA_CFGR1, 0x40020008 		#DMA channel 1 configuration register 0x00000000
.equ R32_DMA_CNTR1, 0x4002000C 		#DMA channel 1 number of data register
.equ R32_DMA_PADDR1, 0x40020010 	#DMA channel 1 peripheral address register 0x00000000
.equ R32_DMA_MADDR1, 0x40020014 	#DMA channel 1 memory address register 0x00000000
.equ R32_DMA_CFGR2, 0x4002001C 		#DMA channel 2 configuration register 0x00000000
.equ R32_DMA_CNTR2, 0x40020020 		#DMA channel 2 number of data register 0x00000000
.equ R32_DMA_PADDR2, 0x40020024 	#DMA channel 2 peripheral address register 0x00000000
.equ R32_DMA_MADDR2, 0x40020028 	#DMA channel 2 memory address register 0x00000000
.equ R32_DMA_CFGR3, 0x40020030 		#DMA channel 3 configuration register 0x00000000
.equ R32_DMA_CNTR3, 0x40020034 		#DMA channel 3 number of data register 0x00000000
.equ R32_DMA_PADDR3, 0x40020038 	#DMA channel 3 peripheral address register 0x00000000
.equ R32_DMA_MADDR3, 0x4002003C 	#DMA channel 3 memory address register 0x00000000
.equ R32_DMA_CFGR4, 0x40020044 		#DMA channel 4 configuration register 0x00000000
.equ R32_DMA_CNTR4, 0x40020048 		#DMA channel 4 number of data register 0x00000000
.equ R32_DMA_PADDR4, 0x4002004C 	#DMA channel 4 peripheral address register 0x00000000
.equ R32_DMA_MADDR4, 0x40020050 	#DMA channel 4 memory address register 0x00000000
.equ R32_DMA_CFGR5, 0x40020058		#DMA channel 5 configuration register 0x00000000
.equ R32_DMA_CNTR5, 0x4002005C 		#DMA channel 5 number of data register 0x00000000
.equ R32_DMA_PADDR5, 0x40020060 	#DMA channel 5 peripheral address register 0x00000000
.equ R32_DMA_MADDR5, 0x40020064 	#DMA channel 5 memory address register 0x00000000
.equ R32_DMA_CFGR6, 0x4002006C 		#DMA channel 6 configuration register 0x00000000
.equ R32_DMA_CNTR6, 0x40020070 		#DMA channel 6 number of data register 0x00000000
.equ R32_DMA_PADDR6, 0x40020074 	#DMA channel 6 peripheral address register 0x00000000
.equ R32_DMA_MADDR6, 0x40020078 	#DMA channel 6 memory address register 0x00000000
.equ R32_DMA_CFGR7, 0x40020080 		#DMA channel 7 configuration register 0x00000000
.equ R32_DMA_CNTR7, 0x40020084 		#DMA channel 7 number of data register 0x00000000
.equ R32_DMA_PADDR7, 0x40020088 	#DMA channel 7 peripheral address register 0x00000000
.equ R32_DMA_MADDR7, 0x4002008C 	#DMA channel 7 memory address register


.equ R32_ADC_STATR, 0x40012400 		#ADC status register 0x00000000
.equ R32_ADC_CTLR1, 0x40012404 		#ADC control register 1 0x00000000
.equ R32_ADC_CTLR2, 0x40012408 		#ADC control register 2 0x00000000
.equ R32_ADC_SAMPTR1, 0x4001240C 	#ADC sample time register 1 0x00000000
.equ R32_ADC_SAMPTR2, 0x40012410 	#ADC sample time register 2 0x00000000
.equ R32_ADC_IOFR1, 0x40012414 		#ADC injected channel data offset register 1 0x00000000
.equ R32_ADC_IOFR2, 0x40012418 		#ADC injected channel data offset register 2 0x00000000
.equ R32_ADC_IOFR3, 0x4001241C 		#ADC injected channel data offset register 3 0x00000000
.equ R32_ADC_IOFR4, 0x40012420 		#ADC injected channel data offset register 4 0x00000000
.equ R32_ADC_WDHTR, 0x40012424 		#ADC watchdog high threshold register 0x00000000
.equ R32_ADC_WDLTR, 0x40012428 		#ADC watchdog low threshold register 0x00000000
.equ R32_ADC_RSQR1, 0x4001242C 		#ADC regular sequence register 1 0x00000000
.equ R32_ADC_RSQR2, 0x40012430 		#ADC regular sequence register 2 0x00000000
.equ R32_ADC_RSQR3, 0x40012434 		#ADC regular sequence register 3 0x00000000
.equ R32_ADC_ISQR, 0x40012438 		#ADC injected sequence register 0x00000000
.equ R32_ADC_IDATAR1, 0x4001243C 	#ADC injected data register 1 0x00000000
.equ R32_ADC_IDATAR2, 0x40012440 	#ADC injected data register 2 0x00000000
.equ R32_ADC_IDATAR3, 0x40012444 	#ADC injected data register 3 0x00000000
.equ R32_ADC_IDATAR4, 0x40012448 	#ADC injected data register 4 0x00000000
.equ R32_ADC_RDATAR, 0x4001244C 	#ADC regular data register 0x00000000
.equ R32_ADC_DLYR, 0x40012450 		#ADC delayed data register


.equ R16_TIM1_CTLR1, 0x40012C00 	#Control register 1 0x0000
.equ R16_TIM1_CTLR2, 0x40012C04 	#Control register 2 0x0000
.equ R16_TIM1_SMCFGR, 0x40012C08 	#Slave mode control register 0x0000
.equ R16_TIM1_DMAINTENR, 0x40012C0C 	#DMA/interrupt enable register 0x0000
.equ R16_TIM1_INTFR, 0x40012C10 	#Interrupt status register 0x0000
.equ R16_TIM1_SWEVGR, 0x40012C14 	#Event generation register 0x0000
.equ R16_TIM1_CHCTLR1, 0x40012C18 	#Compare/capture control register 1 0x0000
.equ R16_TIM1_CHCTLR2, 0x40012C1C 	#Compare/capture control register 2 0x0000
.equ R16_TIM1_CCER, 0x40012C20 		#Compare/capture enable register 0x0000
.equ R16_TIM1_CNT, 0x40012C24 		#Counters 0x0000
.equ R16_TIM1_PSC, 0x40012C28 		#Counting clock prescaler 0x0000
.equ R16_TIM1_ATRLR, 0x40012C2C 	#Auto-reload value register 0x0000
.equ R16_TIM1_RPTCR, 0x40012C30 	#Recurring count value register 0x0000
.equ R16_TIM1_CH1CVR, 0x40012C34 	#Compare/capture register 1 0x0000
.equ R16_TIM1_CH2CVR, 0x40012C38 	#Compare/capture register 2 0x0000
.equ R16_TIM1_CH3CVR, 0x40012C3C 	#Compare/capture register 3 0x0000
.equ R16_TIM1_CH4CVR, 0x40012C40 	#Compare/capture register 4 0x0000
.equ R16_TIM1_BDTR, 0x40012C44 		#Brake and deadband registers 0x0000
.equ R16_TIM1_DMACFGR, 0x40012C48 	#DMA control register 0x0000
.equ R16_TIM1_DMAADR, 0x40012C4C 	#DMA address register for continuous mode


.equ R16_TIM2_CTLR1, 0x40000000 	#TIM2 control register1 0x0000
.equ R16_TIM2_CTLR2, 0x40000004 	#TIM2 control register2 0x0000
.equ R16_TIM2_SMCFGR, 0x40000008 	#TIM2 Slave mode control register 0x0000
.equ R16_TIM2_DMAINTENR, 0x4000000C 	#TIM2 DMA/interrupt enable register
.equ R16_TIM2_INTFR, 0x40000010 	#TIM2 interrupt status register 0x0000
.equ R16_TIM2_SWEVGR, 0x40000014 	#TIM2 event generation register 0x0000
.equ R16_TIM2_CHCTLR1, 0x40000018 	#TIM2 compare/capture control register1 0x0000
.equ R16_TIM2_CHCTLR2, 0x4000001C 	#TIM2 compare/capture control register2 0x0000
.equ R16_TIM2_CCER, 0x40000020 		#TIM2 compare/capture enable register 0x0000
.equ R16_TIM2_CNT, 0x40000024 		#TIM2 counter 0x0000
.equ R16_TIM2_PSC, 0x40000028 		#TIM2 count clock prescaler 0x0000
.equ R16_TIM2_ATRLR, 0x4000002C 	#TIM2 auto-reload register 0x0000
.equ R16_TIM2_CH1CVR, 0x40000034 	#TIM2 compare/capture register1 0x0000
.equ R16_TIM2_CH2CVR, 0x40000038 	#TIM2 compare/capture register2 0x0000
.equ R16_TIM2_CH3CVR, 0x4000003C 	#TIM2 compare/capture register3 0x0000
.equ R16_TIM2_CH4CVR, 0x40000040 	#TIM2 compare/capture register4 0x0000
.equ R16_TIM2_DMACFGR, 0x40000048 	#TIM2 DMA control register 0x0000
.equ R16_TIM2_DMAADR, 0x4000004C 	#TIM2 DMA address register in continuous mode
  

.equ R32_USART_STATR, 0x40013800 	#UASRT status register 0x000000C0
.equ R32_USART_DATAR, 0x40013804 	#UASRT data register 0x000000XX
.equ R32_USART_BRR, 0x40013808 		#UASRT baud rate register 0x00000000
.equ R32_USART_CTLR1, 0x4001380C 	#UASRT control register 1 0x00000000
.equ R32_USART_CTLR2, 0x40013810 	#UASRT control register 2 0x00000000
.equ R32_USART_CTLR3, 0x40013814 	#UASRT control register 3 0x00000000
.equ R32_USART_GPR, 0x40013818 		#UASRT protection time and prescaler register


.equ R16_I2C_CTLR1, 0x40005400 		#I2C control register 1 0x0000
.equ R16_I2C_CTLR2, 0x40005404 		#I2C control register 2 0x0000
.equ R16_I2C_OADDR1, 0x40005408 	#I2C address register 1 0x0000
.equ R16_I2C_OADDR2, 0x4000540C 	#I2C address register 2 0x0000
.equ R16_I2C_DATAR,  0x40005410 	#I2C data register 0x0000
.equ R16_I2C_STAR1,  0x40005414 	#I2C status register 1 0x0000
.equ R16_I2C_STAR2,  0x40005418 	#I2C status register 2 0x0000
.equ R16_I2C_CKCFGR, 0x4000541C 	#I2C clock register

.equ R16_SPI_CTLR1, 0x40013000 		#SPI Control register1 0x0000
.equ R16_SPI_CTLR2, 0x40013004 		#SPI Control register2 0x0000
.equ R16_SPI_STATR, 0x40013008 		#SPI Status register 0x0002
.equ R16_SPI_DATAR, 0x4001300C 		#SPI Data register 0x0000
.equ R16_SPI_CRCR,  0x40013010 		#SPI Polynomial register 0x0007
.equ R16_SPI_RCRCR, 0x40013014 		#SPI Receive CRC register 0x0000
.equ R16_SPI_TCRCR, 0x40013018 		#SPI Transmit CRC register 0x0000
.equ R16_SPI_HSCR,  0x40013024 		#SPI High-speed control register

.equ R16_ESIG_FLACAP, 0x1FFFF7E0 	#Flash capacity register 0xXXXX
.equ R32_ESIG_UNIID1, 0x1FFFF7E8 	#UID register 1 0xXXXXXXXX
.equ R32_ESIG_UNIID2, 0x1FFFF7EC 	#UID register 2 0xXXXXXXXX
.equ R32_ESIG_UNIID3,  0x1FFFF7F0 	#UID register 3 

.equ R32_FLASH_ACTLR, 0x40022000 	#Control register
.equ R32_FLASH_KEYR,  0x40022004 	#FPEC key register X
.equ R32_FLASH_OBKEYR, 0x40022008 	#OBKEY register X
.equ R32_FLASH_STATR, 0x4002200C 	#Status register 0x00008000
.equ R32_FLASH_CTLR,  0x40022010 	#Configuration register 0x00008080
.equ R32_FLASH_ADDR, 0x40022014 	#Address register X
.equ R32_FLASH_OBR,  0x4002201C 	#Select word register 0x03FFFFFE
.equ R32_FLASH_WPR,  0x40022020 	#Write protection register 0xFFFFFFF
.equ R32_FLASH_MODEKEYR,  0x40022024 	#Extended key register X
.equ R32_FLASH_BOOT_MODEKEYR,0x40022028 #Unlock BOOT key register

.equ R32_EXTEN_CTR, 0x40023800 		#Configure extended control registers

.equ PFIC_KEY1, 0xFA050000
.equ PFIC_KEY2, 0xBCAF0000
.equ PFIC_KEY3, 0xBEEF0000
.equ mstatus, 0x300
.equ mtvec, 0x305
.equ intsyscr, 0x804
.equ mepc, 0x341

.equ  SYSTICK_SR_CNTIF, (1<<0)
.equ  SYSTICK_CTLR_STE , (1<<0)
.equ  SYSTICK_CTLR_STIE, (1<<1)
.equ  SYSTICK_CTLR_STCLK, (1<<2)
.equ  SYSTICK_CTLR_STRE,  (1<<3)
.equ  SYSTICK_CTLR_SWIE, (1<<31) 

.equ data_command2 , 0x0d               #0b00001101# data control nibble , 1101  = 0x0D   - EN goes hi=1
.equ data_command3 , 0xf9		#0b00001001# data control nibble , 1011  = 0x0B   - EN goes low=0
.equ inst_command2 , 0x0C               #0b00001100# instruction control nibble ,  led on,EN hi , rs/RW 0    = 1100   = 0x0C
.equ inst_command3 , 0xf8		#0b00001000# instruction control nibble  , led on, EN lo ,rs/rw 0    = 1000   = 0x08
.equ LCDWAD , 0x4E 			# 1602 LCD address

.equ Kp, 0x00008000      		# 0.5 × 65536
.equ Ki, 0x00000CCD      		# 0.05 × 65536
.equ Kd, 0x0000199A      		# 0.1 × 65536
###############################
.equ buffer,   0x20000004
.equ buffer1,  0x20000008
.equ sign,  0x2000000C
.equ input_count,  0x20000010
.equ kd_gain,  0x20000014
.equ fraction,  0x20000018		# stores 1 second measure window overflow for slow signals
.equ fraction2,  0x2000001C
.equ result_lo,  0x20000020
.equ result_hi,  0x20000024
.equ modulo ,  0x20000028 
.equ scratch,  0x2000002C
.equ result1,  0x20000030		# 10 bytes used by print function from 0(mem)
.equ result2,  0x20000034		# till 9(mem) , 2 bytes in mem1
.equ dividend , 0x20000038
.equ divisor, 0x2000003C
.equ DP_STATE, 0x20000040
.equ last_error, 0x20000044
.equ state,  0x20000048
.equ ki_gain, 0x2000004C
.equ kp_gain,0x20000058
.equ i_accum,0x2000005C
.equ mem,0x20000060








.macro push val
  addi sp, sp, -4
  sw \val, 0(sp)
.endm

.macro pop val
  lw \val, 0(sp)
  addi sp, sp, 4
.endm

.macro micros val
  addi sp,sp,-4
  sw t1,0(sp)
  li t1,\val
  call delayus
  lw t1,0(sp)
  addi sp,sp,4
.endm



.align 9
vtable:
  j start		#  
.align 2
  .word   0x00000000 # RESERVED 1
  .word   NMI_IRQhandler
  .word   HardFault_IRQhandler
  .word   0x00000000 # RESERVED 4
  .word   0x00000000 # RESERVED 5
  .word   0x00000000 # RESERVED 6
  .word   0x00000000 # RESERVED 7
  .word   0x00000000 # RESERVED 8
  .word   0x00000000 # RESERVED 9
  .word   0x00000000 # RESERVED 10
  .word   0x00000000 # RESERVED 11
  .word   SysTick_IRQhandler	#; place the address of the mtime ISR subroutine in the vector table position 7,assembler will store isr address here, longs 0x00000000 # RESERVED 12	
  .word   0x00000000 # RESERVED 13
  .word   SW_Software_IRQhandler
  .word   0x00000000 # RESERVED 15
  .word   WWDG_IRQhandler
  .word   PVD_IRQhandler
  .word   FLASH_IRQhandler
  .word   RCC_IRQhandler
  .word   EXTI7_0_IRQhandler
  .word   AWU_IRQhandler
  .word   DMA1_CH1_IRQhandler
  .word   DMA1_CH2_IRQhandler
  .word   DMA1_CH3_IRQhandler
  .word   DMA1_CH4_IRQhandler
  .word   DMA1_CH5_IRQhandler
  .word   DMA1_CH6_IRQhandler
  .word   DMA1_CH7_IRQhandler
  .word  ADC1_IRQhandler				# ADC1 interrupt vector
  .word  I2C1_EV_IRQhandler
  .word  I2C1_ER_IRQhandler
  .word  USART1_IRQhandler
  .word  SPI1_IRQhandler
  .word  TIM1BRK_IRQhandler
  .word  TIM1UP_IRQhandler
  .word  TIM1TRG_COM_IRQhandler
  .word  TIM1CC_IRQhandler
  .word  TIM2_IRQhandler



.text
.section .isr_vectors
  .weak   NMI_IRQhandler
  .weak   HardFault_IRQhandler
  .weak   SysTick_IRQhandler	#; place the address of the mtime ISR subroutine in the vector table position 7,assembler will store isr address here, longs 0x00000000 # RESERVED 12	
  .weak   SW_Software_IRQhandler
  .weak   WWDG_IRQhandler
  .weak   PVD_IRQhandler
  .weak   FLASH_IRQhandler
  .weak   RCC_IRQhandler
  .weak   EXTI7_0_IRQhandler
  .weak   AWU_IRQhandler
  .weak   DMA1_CH1_IRQhandler
  .weak   DMA1_CH2_IRQhandler
  .weak   DMA1_CH3_IRQhandler
  .weak   DMA1_CH4_IRQhandler
  .weak   DMA1_CH5_IRQhandler
  .weak   DMA1_CH6_IRQhandler
  .weak   DMA1_CH7_IRQhandler
  .weak  ADC1_IRQhandler				# ADC1 interrupt vector
  .weak  I2C1_EV_IRQhandler
  .weak  I2C1_ER_IRQhandler
  .weak  USART1_IRQhandler
  .weak  SPI1_IRQhandler
  .weak  TIM1BRK_IRQhandler
  .weak  TIM1UP_IRQhandler
  .weak  TIM1TRG_COM_IRQhandler
  .weak  TIM1CC_IRQhandler
  .weak  TIM2_IRQhandler


.align 2
.text
.global start
start:

    	li sp, STACK			# load stack pointer with stack end address
	 
    	la t0, vtable			#BASEADDR[31:2],The interrupt vector table base address,which needs to be 1KB aligned
    	ori t0, t0, 3			#BASEADDR[31:2],1: Identify by absolute address,1: Address offset based on interrupt number *4
    	csrrw zero, mtvec,t0		# write t0 mtvec
   	la t0,main
	csrw	mepc,t0
          				#csrw	mepc,t0 :mepc updated with address of main
	mret

  
.align 4

main:        


#Enable GPIO clocks & AFIO in APB2 clock register
        
    	la x10,R32_RCC_APB2PCENR	# load address of APB2PCENR register to x10 ,for enabling GPIO A,D,C peripherals
	lw x11,0(x10)			# load contents from peripheral register R32_RCC_APB2PCENR pointed by x10
	li x7,((1<<2)|(1<<4)|(1<<5)|(1<<0)|(1<<14)|(1<<9)|(1<<11))	# 1<<IOPA_EN,1<<IOPC_EN,1<<IOPD_EN,1<<AFIOEN,1<<USART ,1<<ADC enable port A,C,D and AFIO functions,1<<TIM1
	or x11,x11,x7			# or values 
	sw x11,0(x10)			# store modified enable values in R32_RCC_APB2PCENR
	la x10,R32_RCC_APB1PCENR
	lw x11,0(x10)
	ori x11,x11,(1<<0)		# timer2 clock enable
	sw x11,0(x10)


#configure GPIO PortC as multiplex open drain output for I2C
	la x10,R32_GPIOC_CFGLR 				# load pointer x10 with address of R32_GPIOC_CFGLR , I2C SDA & SCL is on portC PC1,PC2
	lw x11,0(x10) 					# load contents from register pointed by x10
	li x7,~((0xf<<12)|(0xf<<16)|(0xf<<20)) 		# clear pc3,pc4,pc5 we need to setup for CS,WR,DATA
	and x11,x11,x7 					# clear  mode and cnf bits for selected pin C1,C2
	li x7,((0x3<<12)|(0x3<<16)|(0x3<<20)) 		# PC3,PC4<PC5= universal pushpull output 50mhz  
	or x11,x11,x7 					# OR value to register
	sw x11,0(x10) 					# store in R32_GPIOC_CFGLR

	la x10,R32_GPIOC_BSHR 	
	li x7,((1<<3)|(1<<4))				# start with CS & WR high by setting output PC3,PC4 high
	sw x7,0(x10)


	la a0,DP_STATE
	li a1,0x01
	sw a1,0(a0)


HT1621_init:
	# Send System Enable (12 bits)
	li a0, 0x802    # 100 (ID) + 00000001 (SYS EN) + 0 (Extra)
	li a1, 12	# number of bits , command 12 bits
	call ht1621_send_bits

	li a0, 0x830	# 100 (ID) + 00110000 (RC 256K) + 0 (Extra)
	li a1, 12
	call ht1621_send_bits   

	li a0, 0x852	# 100 (ID) + 01010010 (BIAS 1/3) + 0 (Extra)
	li a1, 12
	call ht1621_send_bits 

	li a0, 0x806	# 100 (ID) + 00000110 (LCD ON) + 0 (Extra)
	li a1, 12
	call ht1621_send_bits 

	call clear_lcd

	# Send Digit 8 to Address 0 (17 bits)
	li a0, 0x1407F  # 101 (ID) + 000000 (Addr) + 01111111 (Pattern)
	li a1, 17
	call ht1621_send_bits

	call delay1S

	call clear_lcd
	call delay1S


	li a0,65535
	call SPLIT_DECIMAL
	call refresh_lcd

	

	call delay1S
	call clear_lcd

	#li a0,0
	#call SPLIT_DECIMAL_SIGNED
	#call clear_lead_zero_add_DP
	#call refresh_lcd
	
	call delay1S

	li a0,1
	li a1,1000
test_loop:
	call SPLIT_DECIMAL_SIGNED
	call clear_lead_zero_add_DP
	call refresh_lcd
	addi a0,a0,1
	call delay50ms
	bne a0,a1,test_loop
	li a0,0
	j test_loop
here:
        j here







##########################################################
#HT1621 ROUTINES
###########################################################
# a0: The bit-stream (e.g., 0x14000 for a 17-bit write)
# a1: Total number of bits to send (12 or 17)
ht1621_send_bits:
    	addi sp, sp, -28
    	sw ra, 0(sp)
    	sw s0, 4(sp)
	sw t0, 8(sp)
	sw t1, 12(sp)
	sw t2, 16(sp)
	sw tp, 20(sp)
    	sw a1, 24(sp)
    	mv s0, a0               # Move bitstream to s0
    	la t0, R32_GPIOC_BSHR       # GPIOC Base Address

    	# --- 1. Pull CS LOW (PC3) ---
    	li t1, (1 << 19)        # Reset Bit 19 (Top 16 bits of BSHR are Reset)
    	sw t1, 0(t0)         	# Store to BSHR

bit_loop:
    	addi a1, a1, -1         # Move to the current bit index
    	srl t2, s0, a1          # Shift the bit we want into the LSB position
    	andi t2, t2, 1          # Isolate that bit (0 or 1)

    	# --- 2. Set/Reset DATA (PC5) ---
    	beqz t2, data_low
    	li t1, (1 << 5)         # Set Bit 5 (DATA High)
    	j write_data
data_low:
    	li t1, (1 << 21)        # Reset Bit 21 (DATA Low)
write_data:
    	sw t1, 0(t0)         # Write to BSHR

    	# --- 3. Pulse WR Clock (PC4) ---
    	# Pulse LOW
    	li t1, (1 << 20)        # Reset Bit 1 (WR Low)
    	sw t1, 0(t0)

    	# Timing Delay (CH32V003 @ 48MHz needs a tiny pause)
    	li tp, 10
delay_low: 
	addi tp, tp, -1
	bnez tp, delay_low

   	# Pulse HIGH (HT1621 latches DATA on this RISING edge)
    	li t1, (1 << 4)         # Set Bit 1 (WR High)
    	sw t1, 0(t0)

    	# Timing Delay
    	li tp, 10
delay_high: 
	addi tp, tp, -1
	bnez tp, delay_high
    	bnez a1, bit_loop       # Continue until all bits are sent

    	# --- 4. Pull CS HIGH (PC0) ---
    	li t1, (1 << 3)         # Set Bit 0 (CS High)
    	sw t1, 0(t0)
	lw a1, 24(sp)
	lw tp, 20(sp)
	lw t2, 16(sp)
	lw t1, 12(sp)
	lw t0, 8(sp)
	lw s0, 4(sp)
    	lw ra, 0(sp)
    	addi sp, sp, 28
    	ret

##################################
clear_lcd:
	addi sp,sp,-20
	sw ra,0(sp)
	sw tp,4(sp)
	sw gp,8(sp)
	sw a0,12(sp)
	sw a1,16(sp)
	
    	li tp, 0                # Current Address
clear_loop:
    	li a0, 0x14000          # Base 17-bit Write ID
    	slli gp, tp, 8          # Shift Address into the correct bit position
    	or a0, a0, gp           # Combine ID + Address (Data is 0)
    	li a1, 17               # Stream length
    	call ht1621_send_bits   # Your bit-banging routine
    	addi tp, tp, 1
    	li gp, 32
    	blt tp, gp, clear_loop

	lw a1,16(sp)
	lw a0,12(sp)
	lw gp,8(sp)
	lw tp,4(sp)
	lw ra,0(sp)
	addi sp,sp,20
    	ret
################################################################################

#==========================================
delay10S: 
	addi sp,sp,-8 			# push RA
	sw ra,0(sp) 			# push RA
	sw t1,4(sp)
	li t1,20100101 			# load an arbitarary value 20000000 to t1 register 
loop10S:
	addi t1,t1,-1 			# subtract 1 from t1
	bne t1,zero,loop10S 		# if t1 not equal to 0 branch to label loop
	lw t1,4(sp)
	lw ra,0(sp) 			# POP RA
	addi sp,sp,8 			# pop RA
	ret 

delay1S: 
	addi sp,sp,-8 			# push RA
	sw ra,0(sp) 			# push RA
	sw t1,4(sp)
	li t1,2010010 			# load an arbitarary value 20000000 to t1 register 
loop1s:
	addi t1,t1,-1 			# subtract 1 from t1
	bne t1,zero,loop1s 		# if t1 not equal to 0 branch to label loop
	lw t1,4(sp)
	lw ra,0(sp) 			# POP RA
	addi sp,sp,8 			# pop RA
	ret 

delay1ms:
	addi sp,sp,-8 			# push RA
	sw ra,0(sp) 			# push RA
	sw t1,4(sp) 
	li t1,2010 			# load an arbitarary value 20000000 to t1 register 
loop1ms:
	addi t1,t1,-1 			# subtract 1 from t1
	bne t1,zero,loop1ms 		# if t1 not equal to 0 branch to label loop
	lw t1,4(sp)
	lw ra,0(sp) 			# POP RA
	addi sp,sp,8 			# pop RA 
	ret 

delay10ms:
	addi sp,sp,-8 			# push RA
	sw ra,0(sp) 			# push RA
	sw t1,4(sp) 
	li t1,20100 			# load an arbitarary value 20000000 to t1 register 
loop10ms:
	addi t1,t1,-1 			# subtract 1 from t1
	bne t1,zero,loop10ms 		# if t1 not equal to 0 branch to label loop
	lw t1,4(sp)
	lw ra,0(sp) 			# POP RA
	addi sp,sp,8 			# pop RA
	ret

delay50ms:
	addi sp,sp,-8 			# push RA
	sw ra,0(sp) 			# push RA
	sw t1,4(sp) 
	li t1,100500 			# load an arbitrary value 20000000 to t1 register 
loop50ms:
	addi t1,t1,-1 			# subtract 1 from t1
	bne t1,zero,loop50ms 		# if t1 not equal to 0 branch to label loop
	lw t1,4(sp)
	lw ra,0(sp) 			# POP RA
	addi sp,sp,8 			# pop RA
	ret 

delay10us:
	addi sp,sp,-8 			# push RA
	sw ra,0(sp) 			# push RA
	sw t1,4(sp) 
	li t1,105			# load an arbitrary value 20000000 to t1 register 
loop10us:
	addi t1,t1,-1 			# subtract 1 from t1
	bne t1,zero,loop10us 		# if t1 not equal to 0 branch to label loop
	lw t1,4(sp)
	lw ra,0(sp) 			# POP RA
	addi sp,sp,8 			# pop RA
	ret 

delayus:
	addi sp,sp,-4 			# push RA
	sw ra,0(sp) 			# push RA
loopus:
	addi t1,t1,-1 			# subtract 1 from t1
	bne t1,zero,loopus 		# if t1 not equal to 0 branch to label loop
	lw ra,0(sp) 			# POP RA
	addi sp,sp,4 			# pop RA
	ret 

###########################
refresh_lcd:
     addi sp, sp, -36
     sw ra, 0(sp)
     sw s0, 4(sp)        # Buffer pointer
     sw s1, 8(sp)        # Digit counter
     sw tp, 12(sp)       # Current Write Command (101 + Addr)
     sw t0,16(sp)
     sw t1,20(sp)
     sw t2,24(sp)
     sw a0,28(sp)
     sw a1,32(sp)
     la s0, buffer
     li s1, 0            # Start at Digit 0
     li tp, 0x14000      # ID: 101, Addr: 00

refresh_loop:
     add t0, s0, s1      
     lbu t1, 0(t0)       # Load segment pattern from buffer

     mv a0, tp           # Load ID + Address bits
     or a0, a0, t1       # Merge the 8-bit segment data
     li a1, 17           # 17-bit stream
     call ht1621_send_bits

     addi s1, s1, 1      # Move to next buffer byte
     addi tp, tp, 0x200  # Increment HT1621 Address by 2 (0x200 = bit 9)
    
     li t2, 6            # Stop after 6 digits
     blt s1, t2, refresh_loop
     lw a1,32(sp)
     lw a0,28(sp)
     lw t2,24(sp)
     lw t1,20(sp)
     lw t0,16(sp)
     lw tp, 12(sp)
     lw s1, 8(sp)
     lw s0, 4(sp)
     lw ra, 0(sp)
     addi sp, sp, 36
     ret
###################################
#a0= position 0-5, a1 = display number 0-9, loads into buffer
####################################
set_digit:
    addi sp,sp,-20
    sw ra,0(sp)
    sw t0,4(sp)
    sw t1,8(sp)
    sw t2,12(sp)
    sw tp,16(sp)
    la t0, num_table    # Point to the FONT table in Flash
    li tp,0x20
    beq a1,tp,select_space
    li tp,'-'
    beq a1,tp,select_minus
    li tp,'.'
    beq a1,tp,select_DP
    add t0, t0, a1      # Add the offset (e.g., if a1=3, go to 3rd byte)
    lbu t1, 0(t0)       # t1 now holds the FONT (e.g., 0x7A for '3')
    j store_buffer
select_space:
    li t1,0x00
    j store_buffer
select_minus:
    li t1,0x02
    j store_buffer
select_DP:
    li t1,0x80
    j store_buffer
store_buffer:
    la t2, buffer 	# Point to your SRAM storage
    add t2, t2, a0        # Move to the correct digit slot
    sb t1, 0(t2)          # Store the FONT pattern into SRAM
    lw tp,16(sp)
    lw t2,12(sp)
    lw t1,8(sp)
    lw t0,4(sp)
    lw ra,0(sp)
    addi sp,sp,20
    ret


##########################################################################
#TMroutines
##########################################################################
# Input:  x10 = 16-bit value (e.g., 1234)
# Output: Writes 6 bytes to DECI_BUF in TM1637 compatible font

SPLIT_DECIMAL:
	addi sp,sp,-28
	sw ra,0(sp)
	sw t0,4(sp)
	sw t1,8(sp)
	sw t2,12(sp)
	sw gp,16(sp)
	sw x11,20(sp)
	sw x10,24(sp)
	la   t0, buffer     	 # Point to the last digit (Units)
    	#addi t0,t0,5		
    	li   t1, 6               # Counter for 6 digits
    
split_loop:
    	li   t2, 0               # This will be our "Quotient" (Current Digit)
    	li   gp, 10              # Divisor

digit_sub_loop:
    	blt  x10, gp, done_sub   # If remainder < 10, we found the digit
    	addi x10, x10, -10       # Subtract 10
    	addi t2, t2, 1           # Increment quotient
    	j    digit_sub_loop

done_sub:
    	# x10 now holds the remainder (the actual digit 0-9)
    	# t2 holds the value to process for the next power of 10
	la x11,num_table	 # address of table where TM1637 compatible fonts
	add x11,x11,x10		 # Increase address to match number
	lb x10,0(x11)		 # load font
    	sb   x10, 0(t0)          # Store digit (font) in buffer
    	mv   x10, t2             # Move quotient to x10 for next loop
    	#addi t0, t0, -1          # Move buffer pointer left
	addi t0, t0, 1   # new
    	addi t1, t1, -1          # Decrement digit counter
    	bnez t1, split_loop
	lw x10,24(sp)
	lw x11,20(sp)
	lw gp,16(sp)
	lw t2,12(sp)
	lw t1,8(sp)
	lw t0,4(sp)
	lw ra,0(sp)
	addi sp,sp,28
    	ret

############################################################################


# Input:  x10 = signed 16-bit value (e.g., -123)
# Output: Writes fonts to buffer & buffer1 in SRAM (six bytes of space)(e.g., blank, blank, -, 1, 2, 3)

SPLIT_DECIMAL_SIGNED:
    	addi sp,sp,-40
	sw ra,0(sp)
	sw t0,4(sp)
	sw t1,8(sp)
	sw t2,12(sp)
	sw gp,16(sp)
	sw a1,20(sp)
	sw s1,24(sp)        	 # Save s1 to use as "Negative Flag"
	sw a3,28(sp)
	sw a4,32(sp)
	sw a0,36(sp)
    	li s1, 0            	 # Reset negative flag
    	bgez x10, start_split 	 # is input negative
    	li s1, 1            	 # Set flag: Number is negative
    	neg x10, x10        	 # x10 = -x10 (make it positive for the math)

start_split:
    	la   t0, buffer
    	#addi t0, t0, 5      	 # Start at units digit
    	li   t1, 6          	 # Counter
split_loop_signed:
    	li   t2, 0               # This will be our "Quotient" (Current Digit)
    	li   gp, 10              # Divisor

digit_sub_loop_signed:
    	blt  x10, gp, done_sub_signed   # If remainder < 10, we found the digit
    	addi x10, x10, -10       # Subtract 10
    	addi t2, t2, 1           # Increment quotient
    	j    digit_sub_loop_signed

done_sub_signed:
    	# x10 now holds the remainder (the actual digit 0-9)
    	# t2 holds the value to process for the next power of 10
	la a1,num_table
	add a1,a1,x10
	lb x10,0(a1)
    	sb   x10, 0(t0)          # Store digit in buffer
    	mv   x10, t2             # Move quotient to x10 for next loop
    	#addi t0, t0, -1          # Move buffer pointer left
	addi t0, t0, 1   # new
    	addi t1, t1, -1          # Decrement digit counter
    	bnez t1, split_loop_signed
  
	# --- Post-Processing: Insert Negative Sign ---
    	beqz s1, done_all   	 # If not negative, we are done
    
    	# We need to find the first "non-zero" font to place the '-' to its left
    	la   t0, buffer
	addi t0,t0,5		 # start from left most end	
    	li   t1, 0          	 # Index
    	li   t2, 0x7D      	 # Font for '0' = 0x7D
find_num_loop:
    	lbu  a3, 0(t0)
    	bne  a3, t2, place_minus # If it's NOT '0', place minus at [index - 1]
    	addi t0, t0, -1		 # decrease buffer address towards right
    	addi t1, t1, 1		 # increase digit counter
    	li   a4, 5		 # if less than 5
    	blt  t1, a4, find_num_loop

place_minus:
    	addi t0, t0, 1     	# Move one slot to the left
	li   a3, 0x02      	# Font for '-' (Segment G only = 0x02)
    	sb   a3, 0(t0)      	# Overwrite the blank/zero with a minus sign

done_all:
	lw a0,36(sp)
	lw a4,32(sp)
	lw a3,28(sp)
	lw s1,24(sp)
    	lw a1,20(sp)
	lw gp,16(sp)
	lw t2,12(sp)
	lw t1,8(sp)
	lw t0,4(sp)
	lw ra,0(sp)
	addi sp,sp,40
    	ret



clear_lead_zero_add_DP:
	addi sp,sp,-36
	sw ra,0(sp)
	sw a1,4(sp)
	sw tp,8(sp)
	sw gp,12(sp)
	sw a2,16(sp)
	sw t0,20(sp)
	sw t1,24(sp)
	sw s0,28(sp)
	sw a0,32(sp)

	la a0,buffer		# buffer in SRAM stores the font for display
	addi a0,a0,5		# increase pointer to 6th digit , we are looking for leading zeros
	li a1,0			#
	li tp,0			# flag =1 if non zero digit found
        li gp,5			# last digit indicator
	li a2,0			# counter
	li t1,0x7d		# font '0' HT1621 style
	li s0,6			# counter limit (6 digits)
print_loop:
	lbu t0,0(a0)		# load previously loaded font
	beq a2,gp,skip_blank	# has the digit counter reached 5 , we keep the 0 in unit place, if 5 skip blanking
	bnez tp,skip_blank	# has the non zero flag been set, if set skip blank
	beq t0,t1,add_blank	# if t0 is equal to t1 , both are zero font , branch to add_blank, 0 will be removed and space will be added
	li tp,1			# if t0 was a non zero font , set flag 1
	j skip_blank		# skip blanking procedure as we found non zero digit
add_blank:
	li t0,0x00		# filling 0 will print nothing to show blank space
	sb t0,0(a0)		# store space in the buffer
	addi a2,a2,1		# increase counter
	addi a0,a0,-1		# increase display_ram address
	j print_loop		# loop till all conditions are met
skip_blank:
	la gp,DP_STATE		# this variable in SRAM holds where decimal point is placed. Possible values 0x0,0x1,0x2,0x4,0x8,0x10
	lbu gp,0(gp)		# copy decimal point map from DP_STATE
	li t0,0			# initialize counter to 0
	la a0,buffer		# point with a0 to buffer
dp_loop:
	li tp,1			# decimal point mask initialised
	beq s0,t0,done_dp	# has counter t0 reached s0=6 all 6 possible decimal point locations
	lbu t1,0(a0)		# load rightmost font from buffer   (eg;6 in 123456)
	addi a0,a0,1		# pre increase buffer address
	sll tp,tp,t0		# shift t1 (dp mask) by amount of digit position counter t0, each iteration the 1 in tp will be positioned from 0bit to bit6
	addi t0,t0,1		# increase counter
	and a1,gp,tp		# test bit by anding DP_STATE byte with bitmask,if 0 dp not for this bit. if 1 DP is needed here
	beqz a1,dp_loop 	# if bit test is 0 branch to dp_loop to test next digit/position
	addi a0,a0,-1		# if bit test pass to non zero, decrease preincreased buffer address to add decimal point 
	ori t1,t1,0x80		# add DP by OR ing 0x80 to current font in that byte in buffer
	sb t1,0(a0)		# store back byte to buffer
	addi a0,a0,1		# increase address of buffer for next font
	j dp_loop		# loop again till all 6 positions are tested
done_dp:
	lw a0,32(sp)
	lw s0,28(sp)
	lw t1,24(sp)
	lw t0,20(sp)
	lw a2,16(sp)
	lw gp,12(sp)
	lw tp,8(sp)
	lw a1,4(sp)
	lw ra,0(sp)
	addi sp,sp,36
	ret



##################################################################################
.align 4
.section .rodata
.global message

.section .rodata
.align 2
num_table:
    .byte 0x7D, 0x60, 0x3E, 0x7A, 0x63  # 0, 1, 2, 3, 4
    .byte 0x5B, 0x5F, 0x70, 0x7F, 0x7B  # 5, 6, 7, 8, 9
    .byte 0x00                          # Space/Blank




