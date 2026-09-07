message(STATUS "[venmic] Compiling with zig! Target: ${ZIG_TARGET}")

# +-------------------------------------------------------------------------------------------------------+
# | Set compiler and GLIBC Target                                                                         |
# +-------------------------------------------------------------------------------------------------------+

set(CMAKE_C_COMPILER zig cc)
set(CMAKE_C_COMPILER_TARGET ${ZIG_TARGET})

set(CMAKE_CXX_COMPILER zig c++)
set(CMAKE_CXX_COMPILER_AR llvm-ar)
set(CMAKE_CXX_COMPILER_RANLIB llvm-ranlib)
set(CMAKE_CXX_COMPILER_TARGET ${ZIG_TARGET})

# +-------------------------------------------------------------------------------------------------------+
# | CMake Options                                                                                         |
# +-------------------------------------------------------------------------------------------------------+

set(CMAKE_SKIP_RPATH TRUE)
set(CMAKE_INTERPROCEDURAL_OPTIMIZATION TRUE)

# +-------------------------------------------------------------------------------------------------------+
# | See https://github.com/ziglang/zig/issues/22213                                                       |
# +-------------------------------------------------------------------------------------------------------+

set(CMAKE_C_LINKER_DEPFILE_SUPPORTED OFF)
set(CMAKE_CXX_LINKER_DEPFILE_SUPPORTED OFF)

# +-------------------------------------------------------------------------------------------------------+
# | See https://github.com/ziglang/zig/issues/25455                                                       |
# +-------------------------------------------------------------------------------------------------------+

set(venmic_unexpected_hack ON)
