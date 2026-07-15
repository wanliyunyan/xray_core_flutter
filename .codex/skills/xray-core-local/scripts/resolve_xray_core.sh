#!/usr/bin/env bash
set -euo pipefail

repo_root="${1:-$(pwd)}"
parent_dir="$(cd "${repo_root}/.." && pwd)"
xray_core="${parent_dir}/Xray-core"

if [[ ! -d "${xray_core}" ]]; then
  printf '未找到预期的同级 Xray Core checkout：%s\n' "${xray_core}" >&2
  exit 1
fi

if [[ ! -f "${xray_core}/go.mod" || ! -d "${xray_core}/infra/conf" ]]; then
  printf '同级路径存在，但看起来不是 Xray-core：%s\n' "${xray_core}" >&2
  exit 1
fi

printf '%s\n' "${xray_core}"
