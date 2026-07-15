# Agent 指令

## 本地 Xray Core 源码

- 当任务要求读取、检查、对照或基于 Xray Core 更新时，使用相对本仓库根目录的同级 checkout：`../Xray-core`。
- 当前工作区中的规范路径是 `/Volumes/ext/xray/Xray-core`。
- 不要使用任何其他目录名作为 Xray Core。除非用户明确给出其他路径，否则不要使用 `xraycore`、当前 Flutter 包、vendored 副本或远程 GitHub checkout。
- 读取前先确认 `../Xray-core` 存在。如果不存在，停止操作并说明未找到预期的同级 Xray Core checkout。
- 除非用户明确要求编辑 Xray Core 本身，否则把 `../Xray-core` 当作只读目录。
- 做 Xray config parity 相关工作时，使用 `../Xray-core/infra/conf`。
- 从本仓库运行 parity checker 时，优先使用：

```sh
dart run tool/check_xray_conf_parity.dart ../Xray-core/infra/conf
```
