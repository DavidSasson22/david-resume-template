#!/bin/sh

set -eu

signal_repo_dir=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)
signal_typst_bin=${TYPST_BIN:-typst}
signal_tmp_dir=$(mktemp -d)
signal_package_path="$signal_tmp_dir/packages"
signal_package_dir="$signal_package_path/preview/signal-resume/0.1.0"
signal_initialized_dir="$signal_tmp_dir/initialized"

trap 'rm -rf "$signal_tmp_dir"' EXIT

mkdir -p "$(dirname -- "$signal_package_dir")"
ln -s "$signal_repo_dir" "$signal_package_dir"

"$signal_typst_bin" compile \
  --ignore-system-fonts \
  --package-path "$signal_package_path" \
  "$signal_repo_dir/starter/main.typ" \
  "$signal_tmp_dir/starter.pdf"

"$signal_typst_bin" init \
  --package-path "$signal_package_path" \
  @preview/signal-resume:0.1.0 \
  "$signal_initialized_dir"

"$signal_typst_bin" compile \
  --ignore-system-fonts \
  --package-path "$signal_package_path" \
  "$signal_initialized_dir/main.typ" \
  "$signal_tmp_dir/initialized.pdf"

echo "signal-resume package checks passed"
