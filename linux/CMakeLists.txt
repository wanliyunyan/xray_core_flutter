cmake_minimum_required(VERSION 3.10)

project(XrayCoreSDK LANGUAGES C)

add_library(XrayCoreSDK SHARED
  "../src/xray_core_flutter.c"
)

target_include_directories(XrayCoreSDK PUBLIC
  "../src/include"
)

set_target_properties(XrayCoreSDK PROPERTIES
  OUTPUT_NAME "XrayCoreSDK"
)
