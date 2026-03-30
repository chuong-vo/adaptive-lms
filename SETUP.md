# Hướng dẫn setup và chạy OpenROAD cho `tf_lms_sv`

Tài liệu này mô tả quy trình chuẩn để:

- cài dependency và build tool trên máy Linux mới
- cấu hình flow `tf_lms_sv` cho máy local
- chạy flow và đọc output chính

Ba script chính của flow:

- `setup_tools.sh`: cài dependency và build tool
- `configure_flow.sh`: cấu hình flow local, sinh `env.sh`
- `flow.sh`: chạy flow

## 1. Môi trường khuyến nghị

- Linux native hoặc WSL2
- Ubuntu 22.04 hoặc tương đương
- Có `git`, `sudo`, kết nối internet ổn định
- Có đủ dung lượng đĩa để build OpenROAD và Yosys

Nếu dùng WSL:

- đặt repo trong Linux filesystem, ví dụ `~/adaptive-lms`
- không build trong `/mnt/c/...`

## 2. Gói nền tảng trên Ubuntu

```bash
sudo apt-get update
sudo apt-get install -y git ca-certificates cmake swig
```

## 3. Clone và đồng bộ repo

```bash
cd ~
git clone --recursive https://github.com/chuong-vo/adaptive-lms.git
cd adaptive-lms
git pull
git submodule sync --recursive
git submodule update --init --recursive
```

## 4. Setup trên máy mới

```bash
cd ~/adaptive-lms/handoff/tf_lms_sv/scripts/openroad
./setup_tools.sh --check-only
./setup_tools.sh --all --threads 8
./configure_flow.sh
./flow.sh check
```

Ý nghĩa:

- `setup_tools.sh` chỉ setup toolchain
- `configure_flow.sh` chỉ cấu hình flow local
- `flow.sh check` chỉ kiểm tra môi trường, chưa chạy PnR/signoff

Nếu muốn để script tự chọn số luồng:

```bash
./setup_tools.sh --all --threads auto
```

## 5. Chạy flow

Chạy toàn bộ flow:

```bash
./flow.sh rerun -j 8
```

Chạy từng bước:

```bash
./flow.sh synth
./flow.sh floorplan
./flow.sh place
./flow.sh cts
./flow.sh route
./flow.sh finish
./flow.sh lvs
./flow.sh drc
```

Các lệnh gộp:

```bash
./flow.sh all -j 8
./flow.sh signoff
./flow.sh clean
./flow.sh show-env
```

## 6. Input chính của flow

Thiết kế `tf_lms_sv` dùng ba input do người dùng quản lý:

- RTL: [adaptation_lms.sv](/home/chuongvo/adaptive-lms/code/src/sv/rtl/adaptation_lms.sv)
- Constraint: [tf_lms_sv.sdc](/home/chuongvo/adaptive-lms/code/constraints/tf_lms_sv.sdc)
- Design config: [config.mk](/home/chuongvo/adaptive-lms/flow/designs/nangate45/tf_lms_sv/config.mk)

Platform data, LEF/LIB, Tcl flow, LVS deck và DRC deck được lấy từ repo hiện tại.

Lưu ý: thư mục `code/pdk` không còn được dùng cho flow OpenROAD này. Các file công nghệ cần thiết nằm trong [`flow/platforms`](/home/chuongvo/adaptive-lms/flow/platforms).

## 7. Output chính

Output của flow nằm ở:

- Results: [flow/results/nangate45/tf_lms_sv/base](/home/chuongvo/adaptive-lms/flow/results/nangate45/tf_lms_sv/base)
- Logs: [flow/logs/nangate45/tf_lms_sv/base](/home/chuongvo/adaptive-lms/flow/logs/nangate45/tf_lms_sv/base)
- Reports: [flow/reports/nangate45/tf_lms_sv/base](/home/chuongvo/adaptive-lms/flow/reports/nangate45/tf_lms_sv/base)
- Objects: [flow/objects/nangate45/tf_lms_sv/base](/home/chuongvo/adaptive-lms/flow/objects/nangate45/tf_lms_sv/base)

Artifact signoff quan trọng:

- GDS: [6_final.gds](/home/chuongvo/adaptive-lms/flow/results/nangate45/tf_lms_sv/base/6_final.gds)
- DEF: [6_final.def](/home/chuongvo/adaptive-lms/flow/results/nangate45/tf_lms_sv/base/6_final.def)
- Final netlist: [6_final.v](/home/chuongvo/adaptive-lms/flow/results/nangate45/tf_lms_sv/base/6_final.v)
- LVS log: [6_lvs.log](/home/chuongvo/adaptive-lms/flow/logs/nangate45/tf_lms_sv/base/6_lvs.log)
- DRC count: [6_drc_count.rpt](/home/chuongvo/adaptive-lms/flow/reports/nangate45/tf_lms_sv/base/6_drc_count.rpt)

Ảnh OpenROAD GUI được xuất tự động ở bước `finish` và nằm trong thư mục report:

- [final_all.webp](/home/chuongvo/adaptive-lms/flow/reports/nangate45/tf_lms_sv/base/final_all.webp)
- [final_routing.webp](/home/chuongvo/adaptive-lms/flow/reports/nangate45/tf_lms_sv/base/final_routing.webp)
- [final_placement.webp](/home/chuongvo/adaptive-lms/flow/reports/nangate45/tf_lms_sv/base/final_placement.webp)
- [final_clocks.webp](/home/chuongvo/adaptive-lms/flow/reports/nangate45/tf_lms_sv/base/final_clocks.webp)
- [cts_clk.webp](/home/chuongvo/adaptive-lms/flow/reports/nangate45/tf_lms_sv/base/cts_clk.webp)
- [cts_clk_layout.webp](/home/chuongvo/adaptive-lms/flow/reports/nangate45/tf_lms_sv/base/cts_clk_layout.webp)
- [final_resizer.webp](/home/chuongvo/adaptive-lms/flow/reports/nangate45/tf_lms_sv/base/final_resizer.webp)
- [final_congestion.webp](/home/chuongvo/adaptive-lms/flow/reports/nangate45/tf_lms_sv/base/final_congestion.webp)
- [final_ir_drop.webp](/home/chuongvo/adaptive-lms/flow/reports/nangate45/tf_lms_sv/base/final_ir_drop.webp)
- [final_worst_path.webp](/home/chuongvo/adaptive-lms/flow/reports/nangate45/tf_lms_sv/base/final_worst_path.webp)

Các ảnh này là ảnh của trạng thái final, không phải snapshot riêng cho từng bước `synth`, `floorplan`, `place`, `cts`, `route`. Nếu chạy nhiều biến thể bằng `FLOW_VARIANT`, ảnh sẽ nằm dưới:

- [flow/reports/nangate45/tf_lms_sv](/home/chuongvo/adaptive-lms/flow/reports/nangate45/tf_lms_sv)

Bản copy dùng cho handoff và so sánh nằm dưới:

- [handoff/tf_lms_sv/images/openroad](/home/chuongvo/adaptive-lms/handoff/tf_lms_sv/images/openroad)

## 8. Lỗi thường gặp

Thiếu submodule:

```bash
git submodule sync --recursive
git submodule update --init --recursive
```

Thiếu package nền tảng trên Ubuntu:

```bash
sudo apt-get update
sudo apt-get install -y git ca-certificates cmake swig
```

`configure_flow.sh --check` không tìm thấy `openroad` hoặc `yosys`:

- chạy lại `./setup_tools.sh --build`
- hoặc chỉ rõ path bằng `--openroad`, `--yosys`, `--klayout`

Build trên WSL nhưng repo nằm trong `/mnt/c/...`:

- chuyển repo sang `~/adaptive-lms`

## 9. Tài liệu liên quan

- Hướng dẫn nhanh cho thư mục script: [README.md](/home/chuongvo/adaptive-lms/handoff/tf_lms_sv/scripts/openroad/README.md)
- OpenROAD build guide upstream trong repo: [Build.md](/home/chuongvo/adaptive-lms/tools/OpenROAD/docs/user/Build.md)
