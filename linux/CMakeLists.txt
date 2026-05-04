cmake_minimum_required(VERSION 3.10)

project(xray_core_flutter_plugin LANGUAGES C)

add_library(xray_core_flutter_plugin SHARED
  "../src/xray_core_flutter.c"
)

target_include_directories(xray_core_flutter_plugin PUBLIC
  "../src/include"
)

set_target_properties(xray_core_flutter_plugin PROPERTIES
  OUTPUT_NAME "xray_core_flutter"
)
