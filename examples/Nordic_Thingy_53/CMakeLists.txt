cmake_minimum_required(VERSION 3.10)

include(config.cmake)
include(${ARMORY_CMAKE_PATH}/armory_build.cmake)

project(nRF5340)
enable_language(C ASM)
set(CMAKE_C_STANDARD 99)
set(CMAKE_C_STANDARD_REQUIRED ON)
set(CMAKE_C_EXTENSIONS OFF)

SET(CMAKE_EXE_LINKER_FLAGS  "${CMAKE_EXE_LINKER_FLAGS} -L${CMAKE_SOURCE_DIR}/nrfx/mdk")

add_compile_definitions(
	NRF5340_XXAA
	NRF_APPLICATION
	NRF5340_XXAA_APPLICATION
)

include_directories(
	CMSIS/Core/Include
	nrfx/drivers/include
	nrfx
	nrfx/templates
	nrfx/mdk
	src/include
	src
)

set(INPUT_FILES
	#nrfx/mdk/startup_nrf_common.c
	nrfx/mdk/system_nrf5340_application.c
	nrfx/mdk/gcc_startup_nrf5340_application.S
	nrfx/drivers/src/nrfx_gpiote.c
	src/syscalls.c
	src/main.c
)

set(MAIN_TARGET "__main")
add_executable(${MAIN_TARGET} ${INPUT_FILES})
target_link_libraries(${MAIN_TARGET} c_nano)
set_target_properties(${MAIN_TARGET} PROPERTIES OUTPUT_NAME ${PROJECT_NAME}.elf)

#add_custom_target("run" JLinkExe -Commandfile "${CMAKE_SOURCE_DIR}/config/cmd.jlink" DEPENDS ${MAIN_TARGET})

add_custom_command(TARGET ${MAIN_TARGET}
	POST_BUILD
	COMMAND ${CMAKE_SIZE} ${PROJECT_NAME}.elf
	COMMAND ${CMAKE_OBJCOPY} -O ihex ${PROJECT_NAME}.elf ${PROJECT_NAME}.hex
	COMMAND ${CMAKE_OBJCOPY} -O binary ${PROJECT_NAME}.elf ${PROJECT_NAME}.bin)
 
