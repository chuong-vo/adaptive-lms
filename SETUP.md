# Setup và chạy OpenROAD cho `tf_lms_sv`

Tài liệu này dành cho người mới clone repo về và muốn đi từ máy Linux trống đến lúc:

- cài dependency và build tool
- cấu hình flow cho máy local
- chạy từng bước hoặc chạy full flow
- biết input nào được dùng và output nằm ở đâu
- biết cách đọc lỗi thường gặp

Tài liệu chính dùng các tên script thân thiện:

- `setup_tools.sh`: cài dependency và build tool
- `configure_flow.sh`: cấu hình flow cho máy local
- `flow.sh`: chạy flow

Tên cũ vẫn còn để tương thích ngược:

- `bootstrap_fresh_machine.sh`
- `setup_env.sh`
- `run_flow.sh`

## 1. Môi trường khuyến nghị

- Linux native hoặc WSL2
- Khuyến nghị Ubuntu 22.04 hoặc tương đương
- Có `git`, `sudo`, internet ổn định
- Có đủ dung lượng đĩa để build OpenROAD/Yosys

Nếu dùng WSL:

- nên đặt repo trong Linux filesystem, ví dụ `~/adaptive-lms`
- không nên build trong `/mnt/c/...` vì chậm và dễ lỗi hơn

## 2. Clone repo

```bash
cd ~
git clone --recursive https://github.com/chuong-vo/adaptive-lms.git
cd adaptive-lms
```

Nếu repo đã clone từ trước:

```bash
git pull
git submodule sync --recursive
git submodule update --init --recursive
```

## 3. Vào đúng thư mục script

Toàn bộ script setup và chạy flow của `tf_lms_sv` nằm ở:

[`handoff/tf_lms_sv/scripts/openroad`](/home/chuongvo/adaptive-lms/handoff/tf_lms_sv/scripts/openroad)

Di chuyển vào đó:

```bash
cd handoff/tf_lms_sv/scripts/openroad
```

## 4. Ý nghĩa từng script

### `./setup_tools.sh`

Dùng cho máy mới hoặc máy chưa build tool.

Nó có thể:

- kiểm tra môi trường hiện tại
- cài dependency hệ thống qua `setup.sh`
- build local `OpenROAD`, `Yosys`, `yosys-slang`, `kepler-formal`
- không cấu hình flow
- không chạy flow

### `./configure_flow.sh`

Dùng để nối tool local của máy bạn vào flow `tf_lms_sv`.

Nó sẽ:

- detect `openroad`, `yosys`, `klayout`
- cài collateral patch cần cho flow
- sinh file [`env.sh`](/home/chuongvo/adaptive-lms/handoff/tf_lms_sv/scripts/openroad/env.sh)

### `./flow.sh`

Dùng để chạy flow.

Nó hỗ trợ:

- `check`
- `clean`
- `synth`
- `floorplan`
- `place`
- `cts`
- `route`
- `finish`
- `lvs`
- `drc`
- `signoff`
- `all`
- `rerun`

## 5. Trình tự chuẩn

Tách bạch theo đúng vai trò:

1. `setup_tools.sh`
   Chỉ cài dependency và build tool.
2. `configure_flow.sh`
   Chỉ cấu hình flow `tf_lms_sv` cho máy local.
3. `flow.sh`
   Chỉ chạy flow.

## 6. Setup máy mới, không chạy flow

Nếu bạn chỉ muốn cài tool và cấu hình môi trường, chưa chạy flow:

```bash
cd ~
git clone --recursive https://github.com/chuong-vo/adaptive-lms.git
cd adaptive-lms
git pull
git submodule sync --recursive
git submodule update --init --recursive

cd handoff/tf_lms_sv/scripts/openroad
./setup_tools.sh --check-only
./setup_tools.sh --deps --build
./configure_flow.sh
./flow.sh check
```

Nếu muốn giới hạn số luồng:

```bash
./setup_tools.sh --deps --build --threads 8
```

## 7. Setup máy mới

Nếu muốn cài xong tool rồi dừng ở đó:

```bash
cd ~
git clone --recursive https://github.com/chuong-vo/adaptive-lms.git
cd adaptive-lms
git pull
git submodule sync --recursive
git submodule update --init --recursive

cd handoff/tf_lms_sv/scripts/openroad
./setup_tools.sh --check-only
./setup_tools.sh --all
```

Nếu muốn giới hạn số luồng:

```bash
./setup_tools.sh --all --threads 8
```

Sau đó cấu hình flow bằng script riêng:

```bash
./configure_flow.sh
./flow.sh check
```

Khi nào muốn chạy thì dùng:

```bash
./flow.sh rerun -j 8
```

## 8. Chạy lại sau khi đã setup xong

Sau khi tool đã build xong, lần sau chỉ cần:

```bash
cd ~/adaptive-lms/handoff/tf_lms_sv/scripts/openroad
./flow.sh check
./flow.sh rerun
```

## 9. Chạy từng bước

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
./flow.sh all
./flow.sh signoff
./flow.sh rerun
```

Nếu muốn truyền thêm tham số cho `make`, ví dụ số luồng:

```bash
./flow.sh all -j 8
./flow.sh rerun -j 8
```

## 10. Input của flow là gì

Thiết kế `tf_lms_sv` dùng các input chính sau:

- Design config:
  [flow/designs/nangate45/tf_lms_sv/config.mk](/home/chuongvo/adaptive-lms/flow/designs/nangate45/tf_lms_sv/config.mk)
- RTL:
  [code/src/sv/rtl/adaptation_lms.sv](/home/chuongvo/adaptive-lms/code/src/sv/rtl/adaptation_lms.sv)
- Constraint:
  [code/constraints/tf_lms_sv.sdc](/home/chuongvo/adaptive-lms/code/constraints/tf_lms_sv.sdc)
- LVS deck:
  [FreePDK45_orfs_lvs.lylvs](/home/chuongvo/adaptive-lms/handoff/tf_lms_sv/scripts/openroad/klayout/FreePDK45_orfs_lvs.lylvs)
- DRC deck:
  [FreePDK45_beol_noant.lydrc](/home/chuongvo/adaptive-lms/handoff/tf_lms_sv/scripts/openroad/klayout/FreePDK45_beol_noant.lydrc)

## 11. Output nằm ở đâu

Output chính của flow nằm ở 4 thư mục:

- Results:
  [flow/results/nangate45/tf_lms_sv/base](/home/chuongvo/adaptive-lms/flow/results/nangate45/tf_lms_sv/base)
- Logs:
  [flow/logs/nangate45/tf_lms_sv/base](/home/chuongvo/adaptive-lms/flow/logs/nangate45/tf_lms_sv/base)
- Reports:
  [flow/reports/nangate45/tf_lms_sv/base](/home/chuongvo/adaptive-lms/flow/reports/nangate45/tf_lms_sv/base)
- Objects:
  [flow/objects/nangate45/tf_lms_sv/base](/home/chuongvo/adaptive-lms/flow/objects/nangate45/tf_lms_sv/base)

File final quan trọng nhất sau `finish`:

- GDS:
  [6_final.gds](/home/chuongvo/adaptive-lms/flow/results/nangate45/tf_lms_sv/base/6_final.gds)
- DEF:
  [6_final.def](/home/chuongvo/adaptive-lms/flow/results/nangate45/tf_lms_sv/base/6_final.def)
- Netlist final:
  [6_final.v](/home/chuongvo/adaptive-lms/flow/results/nangate45/tf_lms_sv/base/6_final.v)
- SPEF:
  [6_final.spef](/home/chuongvo/adaptive-lms/flow/results/nangate45/tf_lms_sv/base/6_final.spef)

File signoff quan trọng:

- LVS log:
  [6_lvs.log](/home/chuongvo/adaptive-lms/flow/logs/nangate45/tf_lms_sv/base/6_lvs.log)
- DRC log:
  [6_drc.log](/home/chuongvo/adaptive-lms/flow/logs/nangate45/tf_lms_sv/base/6_drc.log)
- DRC count:
  [6_drc_count.rpt](/home/chuongvo/adaptive-lms/flow/reports/nangate45/tf_lms_sv/base/6_drc_count.rpt)

## 12. Output trên terminal sẽ trông như thế nào

`flow.sh` in ngắn gọn theo từng bước.

Ví dụ:

```text
[OK]   Synthesis    1_synth.odb 1_synth.sdc
[OK]   Floorplan    2_floorplan.odb
[OK]   Placement    3_place.odb
[OK]   Clock tree   4_cts.odb
[OK]   Routing      5_route.odb route.guide
[OK]   Final export 6_final.gds 6_final.def 6_final.v
[OK]   LVS          Netlists match
[OK]   DRC          violations=0
Done: 8/8 steps passed
```

Nếu fail:

```text
[FAIL] Routing      see /.../flow/logs/nangate45/tf_lms_sv/base/5_2_route.log
Stopped at: Routing (4/6 steps passed)
```

## 13. Trình tự khuyến nghị cho người mới

### Cách an toàn nhất

```bash
./setup_tools.sh --check-only
./setup_tools.sh --deps --build
./configure_flow.sh
./flow.sh check
./flow.sh all -j 8
```

### Cách nhanh nhất để setup

```bash
./setup_tools.sh --all --threads 8
```

Sau đó:

```bash
./configure_flow.sh
./flow.sh rerun -j 8
```

## 14. Xử lý lỗi thường gặp

### Thiếu submodule

Triệu chứng:

- báo thiếu `tools/OpenROAD`
- báo thiếu `tools/yosys`
- báo thiếu source dependency

Cách xử lý:

```bash
git submodule sync --recursive
git submodule update --init --recursive
```

### Thiếu package hệ thống sau `setup.sh`

Triệu chứng:

- `Remaining issues after setup: missing ...`

Ví dụ:

- `cmake`
- `swig`

Cách xử lý:

```bash
sudo apt-get update
sudo apt-get install -y cmake swig
```

Sau đó chạy lại:

```bash
./setup_tools.sh --check-only
```

### `configure_flow.sh --check` fail

Triệu chứng:

- không detect được `openroad`, `yosys`, hoặc `klayout`

Cách xử lý:

```bash
./configure_flow.sh \
  --openroad /path/to/openroad \
  --yosys /path/to/yosys \
  --klayout /path/to/klayout
```

### Build trên WSL nhưng để repo trong `/mnt/c`

Triệu chứng:

- build chậm bất thường
- lỗi lặt vặt về file hoặc timestamp

Cách xử lý:

- chuyển repo sang `~/adaptive-lms`

### Build xong nhưng flow vẫn dùng nhầm tool hệ thống

Tình trạng này đã được script giảm đáng kể:

- `configure_flow.sh` ưu tiên binary local trong `tools/install/`
- `build_openroad.sh` chỉ skip rebuild khi source và build-state còn khớp

Nếu muốn kiểm tra tool nào đang được dùng:

```bash
./flow.sh show-env
```

## 15. Dọn output hoặc khôi phục patch

Xóa artifact flow của `tf_lms_sv`:

```bash
./flow.sh clean
```

Khôi phục các file repo đã bị `configure_flow.sh` patch:

```bash
./configure_flow.sh --restore
```

## 16. Tài liệu liên quan

- Hướng dẫn nhanh cho script:
  [handoff/tf_lms_sv/scripts/openroad/README.md](/home/chuongvo/adaptive-lms/handoff/tf_lms_sv/scripts/openroad/README.md)
- Handoff tổng:
  [handoff/tf_lms_sv/README.md](/home/chuongvo/adaptive-lms/handoff/tf_lms_sv/README.md)
- Signoff artifacts:
  [handoff/tf_lms_sv/signoff/README.md](/home/chuongvo/adaptive-lms/handoff/tf_lms_sv/signoff/README.md)
