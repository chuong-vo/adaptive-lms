# `tf_lms_sv` OpenROAD rerun scripts

## Mục tiêu

Bộ script này dùng để:

- dựng lại môi trường chạy `tf_lms_sv`
- cài các patch ORFS cần cho flow hiện tại
- sinh file `env.sh` với path local của từng máy
- cho phép thành viên khác trong nhóm chạy lại toàn bộ flow bằng một lệnh

## File chính

- `bootstrap_fresh_machine.sh`: wrapper cho máy mới, dùng `setup.sh` + `build_openroad.sh` của ORFS rồi nối sang flow `tf_lms_sv`
- `setup_env.sh`: detect tool, cài collateral vào repo, sinh `env.sh`
- `run_flow.sh`: wrapper để chạy lại từng bước hoặc toàn bộ flow
- `design/config.mk`: design config đã dùng cho `tf_lms_sv`
- `flow/global_place.tcl`: bản vá placer tương thích với OpenROAD hiện tại
- `flow/util.tcl`: bản vá `repair_timing` để nhận `MAX_BUFFER_PERCENT` và `MAX_UTILIZATION`
- `klayout/FreePDK45_orfs_lvs.lylvs`: deck LVS đã dùng
- `klayout/FreePDK45_beol_noant.lydrc`: deck DRC đã dùng

## Yêu cầu

Máy chạy cần có:

- `openroad`
- `yosys`
- `klayout`
- `make`
- repo này với cây `handoff/tf_lms_sv/` còn nguyên

Nếu tool không ở `PATH`, có thể truyền path tường minh:

```bash
./setup_env.sh \
  --openroad /path/to/openroad \
  --yosys /path/to/yosys \
  --klayout /path/to/klayout
```

## Cách dùng

Từ repo root:

```bash
cd handoff/tf_lms_sv/scripts/openroad
./setup_env.sh
./run_flow.sh check
./run_flow.sh rerun
```

## Máy mới hoàn toàn

Nếu là máy mới, clone repo trước:

```bash
git clone --recursive <repo-url>
cd OpenROAD-flow-scripts
```

Sau đó chạy wrapper bootstrap:

```bash
cd handoff/tf_lms_sv/scripts/openroad
./bootstrap_fresh_machine.sh --all
```

Wrapper này sẽ:

1. chạy `sudo ./setup.sh`
2. chạy `./build_openroad.sh --local`
3. cài collateral `tf_lms_sv`
4. rerun full flow

Nếu chỉ muốn cài dependency + build tool, chưa chạy flow:

```bash
./bootstrap_fresh_machine.sh --deps --build
```

## Lệnh thường dùng

```bash
./run_flow.sh synth
./run_flow.sh floorplan
./run_flow.sh place
./run_flow.sh cts
./run_flow.sh route
./run_flow.sh finish
./run_flow.sh lvs
./run_flow.sh drc
./run_flow.sh signoff
./run_flow.sh rerun
```

## Kết quả nằm ở đâu

- Flow log/report/result:
  - `flow/logs/nangate45/tf_lms_sv/base/`
  - `flow/reports/nangate45/tf_lms_sv/base/`
  - `flow/results/nangate45/tf_lms_sv/base/`
- Signoff copy đã gom:
  - `handoff/tf_lms_sv/signoff/`

## Restore patch

Nếu cần trả repo về trạng thái trước khi chạy `setup_env.sh`:

```bash
./setup_env.sh --restore
```

Script sẽ dùng backup trong `scripts/openroad/.backup/`.
