#build configuration

set(ARMORY_CMAKE_PATH "../../cmake")
set(ARMORY_TOOLCHAIN_PATH "/home/artjom/Develop/tools/GCC/gcc-arm-none-eabi")
set(ARMORY_LINKER_SCRIPT "${CMAKE_SOURCE_DIR}/src/STM32F401CCUX_FLASH.ld")
set(ARMORY_BUILD_VENDOR "ST")
set(ARMORY_DEVICE_NAME "STM32F401xC")
set(STM32_HAL_PATH "/home/artjom/Develop/tools/STMicroelectronics/HAL/stm32f4xx_hal_driver")
set(STM32_CMSIS_PATH "/home/artjom/Develop/tools/STMicroelectronics/CMSIS")
set(TARGET_CPU "cortex-m4")
