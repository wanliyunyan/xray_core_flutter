cmake_minimum_required(VERSION 3.10)

project(XrayCoreSDK VERSION 0.4.0 LANGUAGES C)

add_library(XrayCoreSDK SHARED
  xray_core_flutter.c
)

target_include_directories(XrayCoreSDK PUBLIC
  "${CMAKE_CURRENT_SOURCE_DIR}/include"
)

set_target_properties(XrayCoreSDK PROPERTIES
  PUBLIC_HEADER include/XrayCoreSDK/XrayCoreSDK.h
  OUTPUT_NAME "XrayCoreSDK"
)

target_compile_definitions(XrayCoreSDK PUBLIC DART_SHARED_LIB)
