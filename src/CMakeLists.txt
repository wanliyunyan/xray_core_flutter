cmake_minimum_required(VERSION 3.10)

project(xray_core_flutter_library VERSION 0.2.1 LANGUAGES C)

add_library(xray_core_flutter SHARED
  xray_core_flutter.c
)

target_include_directories(xray_core_flutter PUBLIC
  "${CMAKE_CURRENT_SOURCE_DIR}/include"
)

set_target_properties(xray_core_flutter PROPERTIES
  PUBLIC_HEADER include/xray_core_flutter/xray_core_flutter.h
  OUTPUT_NAME "xray_core_flutter"
)

target_compile_definitions(xray_core_flutter PUBLIC DART_SHARED_LIB)
