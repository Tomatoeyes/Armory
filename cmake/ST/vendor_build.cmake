
include(stm32_devices)

add_compile_definitions(
	USE_HAL_DRIVER
	${ARMORY_DEVICE_NAME})

if(USE_HAL_DRIVER)

if(NOT ARMORY_DEVICE_NAME)
message(FATAL_ERROR "Target STM32 Device Not Defined!")
else()

if(ARMORY_DEVICE_NAME IN_LIST STM32F0_TARGET_LIST)
set(STM32_FAMILY "F0")
include(stm32f0hal)
endif()

if(ARMORY_DEVICE_NAME IN_LIST STM32F1_TARGET_LIST)
set(STM32_FAMILY "F1")
include(stm32f1hal)
endif()

if(ARMORY_DEVICE_NAME IN_LIST STM32F2_TARGET_LIST)
set(STM32_FAMILY "F2")
include(stm32f2hal)
endif()

if(ARMORY_DEVICE_NAME IN_LIST STM32F3_TARGET_LIST)
set(STM32_FAMILY "F3")
include(stm32f3hal)
endif()

if(ARMORY_DEVICE_NAME IN_LIST STM32F4_TARGET_LIST)
set(STM32_FAMILY "F4")
include(stm32f4hal)
endif()

if(ARMORY_DEVICE_NAME IN_LIST STM32F7_TARGET_LIST)
set(STM32_FAMILY "F7")
include(stm32f7hal)
endif()

if(ARMORY_DEVICE_NAME IN_LIST STM32G0_TARGET_LIST)
set(STM32_FAMILY "G0")
include(stm32g0hal)
endif()

if(ARMORY_DEVICE_NAME IN_LIST STM32G4_TARGET_LIST)
set(STM32_FAMILY "G4")
include(stm32g4hal)
endif()

if(ARMORY_DEVICE_NAME IN_LIST STM32H7_TARGET_LIST)
set(STM32_FAMILY "H7")
include(stm32h7hal)
endif()

if(ARMORY_DEVICE_NAME IN_LIST STM32L0_TARGET_LIST)
set(STM32_FAMILY "L0")
include(stm32l0hal)
endif()

if(ARMORY_DEVICE_NAME IN_LIST STM32L1_TARGET_LIST)
set(STM32_FAMILY "L1")
include(stm32l1hal)
endif()

if(ARMORY_DEVICE_NAME IN_LIST STM32L4_TARGET_LIST)
set(STM32_FAMILY "L4")
include(stm32l4hal)
endif()

if(ARMORY_DEVICE_NAME IN_LIST STM32L5_TARGET_LIST)
set(STM32_FAMILY "L5")
include(stm32l5hal)
endif()

if(ARMORY_DEVICE_NAME IN_LIST STM32U5_TARGET_LIST)
set(STM32_FAMILY "U5")
include(stm32u5hal)
endif()

if(ARMORY_DEVICE_NAME IN_LIST STM32WB_TARGET_LIST)
set(STM32_FAMILY "WB")
include(stm32wbhal)
endif()

if(ARMORY_DEVICE_NAME IN_LIST STM32WL_TARGET_LIST)
set(STM32_FAMILY "WL")
include(stm32wlhal)
endif()
endif()

if(NOT STM32_FAMILY)
message(FATAL_ERROR "Target STM32 Not Suported!")
endif()
endif()