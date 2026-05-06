#ifndef XRAY_CORE_SDK_H_
#define XRAY_CORE_SDK_H_

#include <stdint.h>

#if defined(_WIN32)
#define XRAY_CORE_SDK_EXPORT __declspec(dllexport)
#else
#define XRAY_CORE_SDK_EXPORT __attribute__((visibility("default")))
#endif

#if defined(__cplusplus)
extern "C" {
#endif

XRAY_CORE_SDK_EXPORT int32_t xray_core_sdk_abi_version(void);

XRAY_CORE_SDK_EXPORT const char* xray_core_sdk_version(void);

#if defined(__cplusplus)
}
#endif

#endif  // XRAY_CORE_SDK_H_
