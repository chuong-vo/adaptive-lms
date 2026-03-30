# `tf_lms_sv` OpenROAD scripts

Thư mục này chứa ba script chính cho flow OpenROAD:

- `./setup_tools.sh`: cài dependency và build tool
- `./configure_flow.sh`: cấu hình flow local
- `./flow.sh`: chạy flow

## Quick start

```bash
cd ~/adaptive-lms/handoff/tf_lms_sv/scripts/openroad
./setup_tools.sh --check-only
./setup_tools.sh --all --threads 8
./configure_flow.sh
./flow.sh check
./flow.sh rerun -j 8
```

## Lệnh thường dùng

```bash
./flow.sh check
./flow.sh clean
./flow.sh all -j 8
./flow.sh rerun -j 8
./flow.sh synth
./flow.sh floorplan
./flow.sh place
./flow.sh cts
./flow.sh route
./flow.sh finish
./flow.sh lvs
./flow.sh drc
./flow.sh show-env
```

## Output chính

- Artifact chính: [flow/results/nangate45/tf_lms_sv/base](/home/chuongvo/adaptive-lms/flow/results/nangate45/tf_lms_sv/base)
- Log: [flow/logs/nangate45/tf_lms_sv/base](/home/chuongvo/adaptive-lms/flow/logs/nangate45/tf_lms_sv/base)
- Report text và ảnh: [flow/reports/nangate45/tf_lms_sv/base](/home/chuongvo/adaptive-lms/flow/reports/nangate45/tf_lms_sv/base)
- Ảnh OpenROAD GUI được xuất ở bước `finish`, ví dụ `final_routing.webp`, `final_placement.webp`, `final_congestion.webp`, `final_worst_path.webp`
- Bản copy handoff: [handoff/tf_lms_sv/images/openroad](/home/chuongvo/adaptive-lms/handoff/tf_lms_sv/images/openroad)

## File chính

- [`setup_tools.sh`](/home/chuongvo/adaptive-lms/handoff/tf_lms_sv/scripts/openroad/setup_tools.sh)
- [`configure_flow.sh`](/home/chuongvo/adaptive-lms/handoff/tf_lms_sv/scripts/openroad/configure_flow.sh)
- [`flow.sh`](/home/chuongvo/adaptive-lms/handoff/tf_lms_sv/scripts/openroad/flow.sh)
- [`env.sh`](/home/chuongvo/adaptive-lms/handoff/tf_lms_sv/scripts/openroad/env.sh)

## Tài liệu đầy đủ

- [SETUP.md](/home/chuongvo/adaptive-lms/SETUP.md)
