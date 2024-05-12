cmake_minimum_required(VERSION 3.10)

option(USE_HAL_DRIVER "Use STM32 HAL Driver" ON)

include(config.cmake)
include(${ARMORY_CMAKE_PATH}/armory_build.cmake)

enable_language(C ASM)
set(CMAKE_C_STANDARD 99)
set(CMAKE_C_STANDARD_REQUIRED ON)
set(CMAKE_C_EXTENSIONS OFF)

project(Black-Pill)

include_directories(
    ${STM32_CMSIS_PATH}/cmsis_device_f4/Include
    ${STM32_CMSIS_PATH}/cmsis_core/Include
	${STM32_HAL_PATH}/Inc
	inc
)

set(INPUT_FILES
	src/main.c
	src/system_stm32f4xx.c
	src/stm32f4xx_it.c
	src/startup_stm32f401ccux.s)

set(MAIN_TARGET "__main")
add_executable(${MAIN_TARGET} ${INPUT_FILES})
target_link_libraries(${MAIN_TARGET} stm32_hal)

set_target_properties(${MAIN_TARGET} PROPERTIES OUTPUT_NAME ${PROJECT_NAME}.elf)

add_custom_command(TARGET ${MAIN_TARGET}
	POST_BUILD
	COMMAND ${CMAKE_SIZE} ${PROJECT_NAME}.elf
	COMMAND ${CMAKE_OBJCOPY} -O ihex ${PROJECT_NAME}.elf ${PROJECT_NAME}.hex
	COMMAND ${CMAKE_OBJCOPY} -O binary ${PROJECT_NAME}.elf ${PROJECT_NAME}.bin)
