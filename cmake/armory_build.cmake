get_filename_component(ARMORY_CMAKE_PATH ${CMAKE_CURRENT_LIST_FILE} DIRECTORY)
list(APPEND CMAKE_MODULE_PATH ${ARMORY_CMAKE_PATH})
list(APPEND CMAKE_MODULE_PATH ${ARMORY_CMAKE_PATH}/${ARMORY_BUILD_VENDOR})

include(toolchain_gcc)

set(COMMON_OPTS
	-mcpu=${TARGET_CPU}
	-mthumb
	-mfloat-abi=soft
	#--specs=nosys.specs
)

add_compile_options(
	${COMMON_OPTS}
	-fdata-sections
	-ffunction-sections
	-Wall
	-O0
	-g3
)

add_link_options(
	-T${ARMORY_LINKER_SCRIPT}
	${COMMON_OPTS}
	-Wl,--print-memory-usage
	-Wl,-Map=${PROJECT_NAME}.map,--cref
	-Wl,--gc-sections
    -Wl,--no-warn-rwx-segments
)

include(vendor_build)
