# `tf_lms_sv` OpenROAD scripts

Đây là thư mục script để setup và chạy flow OpenROAD cho `tf_lms_sv`.

Nếu bạn cần tài liệu đầy đủ từ lúc chuẩn bị Linux, clone repo, setup tool, chạy flow, xem input/output và xử lý lỗi:

- xem [SETUP.md](/home/chuongvo/adaptive-lms/SETUP.md)

## Script nên dùng

- `./setup_tools.sh`
  Dùng cho máy mới. Cài dependency và build tool.
- `./configure_flow.sh`
  Detect tool local, cài collateral patch, sinh `env.sh`.
- `./flow.sh`
  Chạy flow và in trạng thái từng bước.

Tên cũ vẫn còn để tương thích ngược:

- `bootstrap_fresh_machine.sh`
- `setup_env.sh`
- `run_flow.sh`

## Quick start

### Setup môi trường, chưa chạy flow

```bash
cd ~/adaptive-lms/handoff/tf_lms_sv/scripts/openroad
./setup_tools.sh --check-only
./setup_tools.sh --deps --build
./configure_flow.sh
./flow.sh check
```

### Setup xong và chạy full flow

```bash
cd ~/adaptive-lms/handoff/tf_lms_sv/scripts/openroad
./setup_tools.sh --all --threads 8
```

### Chạy lại flow sau này

```bash
cd ~/adaptive-lms/handoff/tf_lms_sv/scripts/openroad
./flow.sh rerun -j 8
```

## Lệnh thường dùng

```bash
./flow.sh check
./flow.sh clean
./flow.sh synth
./flow.sh floorplan
./flow.sh place
./flow.sh cts
./flow.sh route
./flow.sh finish
./flow.sh lvs
./flow.sh drc
./flow.sh signoff
./flow.sh all -j 8
./flow.sh rerun -j 8
```

## File chính trong thư mục này

- [`flow.sh`](/home/chuongvo/adaptive-lms/handoff/tf_lms_sv/scripts/openroad/flow.sh)
- [`configure_flow.sh`](/home/chuongvo/adaptive-lms/handoff/tf_lms_sv/scripts/openroad/configure_flow.sh)
- [`setup_tools.sh`](/home/chuongvo/adaptive-lms/handoff/tf_lms_sv/scripts/openroad/setup_tools.sh)
- [`env.sh`](/home/chuongvo/adaptive-lms/handoff/tf_lms_sv/scripts/openroad/env.sh)
- [`design/config.mk`](/home/chuongvo/adaptive-lms/handoff/tf_lms_sv/scripts/openroad/design/config.mk)
- [`klayout/FreePDK45_orfs_lvs.lylvs`](/home/chuongvo/adaptive-lms/handoff/tf_lms_sv/scripts/openroad/klayout/FreePDK45_orfs_lvs.lylvs)
- [`klayout/FreePDK45_beol_noant.lydrc`](/home/chuongvo/adaptive-lms/handoff/tf_lms_sv/scripts/openroad/klayout/FreePDK45_beol_noant.lydrc)

## Output của flow nằm ở đâu

- Results:
  [flow/results/nangate45/tf_lms_sv/base](/home/chuongvo/adaptive-lms/flow/results/nangate45/tf_lms_sv/base)
- Logs:
  [flow/logs/nangate45/tf_lms_sv/base](/home/chuongvo/adaptive-lms/flow/logs/nangate45/tf_lms_sv/base)
- Reports:
  [flow/reports/nangate45/tf_lms_sv/base](/home/chuongvo/adaptive-lms/flow/reports/nangate45/tf_lms_sv/base)

## Ghi chú

- Khuyến nghị build trong Linux filesystem, ví dụ `~/adaptive-lms`
- Không khuyến nghị build trong `/mnt/c/...` nếu đang dùng WSL
- `flow.sh show-env` cho biết chính xác flow đang dùng tool nào
