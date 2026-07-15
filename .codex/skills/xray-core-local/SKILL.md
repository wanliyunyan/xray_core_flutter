---
name: xray-core-local
description: 在本仓库中需要读取、检查、对照或校验 Xray Core 源码时使用，包括 Xray-core、infra/conf、Go 配置模型、parity check 或原生运行时引用。始终把 Xray Core 解析为相对本项目的同级目录 ../Xray-core；除非用户明确提供其他路径，否则不要使用 xraycore、本 Flutter 包、远程 GitHub 或任何其他本地目录。
---

# Xray Core Local

## 核心规则

把 Xray Core 解析为当前仓库根目录同级的 `../Xray-core`。

不要推断或搜索其他目录名。如果 `../Xray-core` 不存在，停止操作并告诉用户预期的同级 Xray Core checkout 缺失。

## 快速路径检查

当命令需要绝对路径时，使用随 skill 附带的解析脚本：

```sh
.codex/skills/xray-core-local/scripts/resolve_xray_core.sh
```

脚本会打印 Xray Core 的绝对路径；如果预期 checkout 不存在，则会失败。

## 常用路径

- Xray Core 根目录：`../Xray-core`
- Xray 配置包：`../Xray-core/infra/conf`
- Go module 文件：`../Xray-core/go.mod`

在这个 Flutter 包中运行 parity check 时，使用：

```sh
dart run tool/check_xray_conf_parity.dart ../Xray-core/infra/conf
```

## 写入安全

除非用户明确要求修改 Xray Core 本身，否则把 `../Xray-core` 当作只读目录。针对这个 Flutter 包的修改应保留在本仓库内。
