set(STM32_HAL_SRC
${STM32_HAL_PATH}/Src/stm32g4xx_hal_adc.c
${STM32_HAL_PATH}/Src/stm32g4xx_hal_adc_ex.c
${STM32_HAL_PATH}/Src/stm32g4xx_hal.c
${STM32_HAL_PATH}/Src/stm32g4xx_hal_comp.c
${STM32_HAL_PATH}/Src/stm32g4xx_hal_cordic.c
${STM32_HAL_PATH}/Src/stm32g4xx_hal_cortex.c
${STM32_HAL_PATH}/Src/stm32g4xx_hal_crc.c
${STM32_HAL_PATH}/Src/stm32g4xx_hal_crc_ex.c
${STM32_HAL_PATH}/Src/stm32g4xx_hal_cryp.c
${STM32_HAL_PATH}/Src/stm32g4xx_hal_cryp_ex.c
${STM32_HAL_PATH}/Src/stm32g4xx_hal_dac.c
${STM32_HAL_PATH}/Src/stm32g4xx_hal_dac_ex.c
${STM32_HAL_PATH}/Src/stm32g4xx_hal_dma.c
${STM32_HAL_PATH}/Src/stm32g4xx_hal_dma_ex.c
${STM32_HAL_PATH}/Src/stm32g4xx_hal_exti.c
${STM32_HAL_PATH}/Src/stm32g4xx_hal_fdcan.c
${STM32_HAL_PATH}/Src/stm32g4xx_hal_flash.c
${STM32_HAL_PATH}/Src/stm32g4xx_hal_flash_ex.c
${STM32_HAL_PATH}/Src/stm32g4xx_hal_flash_ramfunc.c
${STM32_HAL_PATH}/Src/stm32g4xx_hal_fmac.c
${STM32_HAL_PATH}/Src/stm32g4xx_hal_gpio.c
${STM32_HAL_PATH}/Src/stm32g4xx_hal_hrtim.c
${STM32_HAL_PATH}/Src/stm32g4xx_hal_i2c.c
${STM32_HAL_PATH}/Src/stm32g4xx_hal_i2c_ex.c
${STM32_HAL_PATH}/Src/stm32g4xx_hal_i2s.c
${STM32_HAL_PATH}/Src/stm32g4xx_hal_irda.c
${STM32_HAL_PATH}/Src/stm32g4xx_hal_iwdg.c
${STM32_HAL_PATH}/Src/stm32g4xx_hal_lptim.c
${STM32_HAL_PATH}/Src/stm32g4xx_hal_nand.c
${STM32_HAL_PATH}/Src/stm32g4xx_hal_nor.c
${STM32_HAL_PATH}/Src/stm32g4xx_hal_opamp.c
${STM32_HAL_PATH}/Src/stm32g4xx_hal_opamp_ex.c
${STM32_HAL_PATH}/Src/stm32g4xx_hal_pcd.c
${STM32_HAL_PATH}/Src/stm32g4xx_hal_pcd_ex.c
${STM32_HAL_PATH}/Src/stm32g4xx_hal_pwr.c
${STM32_HAL_PATH}/Src/stm32g4xx_hal_pwr_ex.c
${STM32_HAL_PATH}/Src/stm32g4xx_hal_qspi.c
${STM32_HAL_PATH}/Src/stm32g4xx_hal_rcc.c
${STM32_HAL_PATH}/Src/stm32g4xx_hal_rcc_ex.c
${STM32_HAL_PATH}/Src/stm32g4xx_hal_rng.c
${STM32_HAL_PATH}/Src/stm32g4xx_hal_rtc.c
${STM32_HAL_PATH}/Src/stm32g4xx_hal_rtc_ex.c
${STM32_HAL_PATH}/Src/stm32g4xx_hal_sai.c
${STM32_HAL_PATH}/Src/stm32g4xx_hal_sai_ex.c
${STM32_HAL_PATH}/Src/stm32g4xx_hal_smartcard.c
${STM32_HAL_PATH}/Src/stm32g4xx_hal_smartcard_ex.c
${STM32_HAL_PATH}/Src/stm32g4xx_hal_smbus.c
${STM32_HAL_PATH}/Src/stm32g4xx_hal_smbus_ex.c
${STM32_HAL_PATH}/Src/stm32g4xx_hal_spi.c
${STM32_HAL_PATH}/Src/stm32g4xx_hal_spi_ex.c
${STM32_HAL_PATH}/Src/stm32g4xx_hal_sram.c
${STM32_HAL_PATH}/Src/stm32g4xx_hal_tim.c
${STM32_HAL_PATH}/Src/stm32g4xx_hal_tim_ex.c
${STM32_HAL_PATH}/Src/stm32g4xx_hal_uart.c
${STM32_HAL_PATH}/Src/stm32g4xx_hal_uart_ex.c
${STM32_HAL_PATH}/Src/stm32g4xx_hal_usart.c
${STM32_HAL_PATH}/Src/stm32g4xx_hal_usart_ex.c
${STM32_HAL_PATH}/Src/stm32g4xx_hal_wwdg.c
)

add_library(stm32_hal STATIC ${STM32_HAL_SRC})