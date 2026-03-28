# Setup và chạy lại `adaptive-lms`

Tài liệu này dành cho thành viên mới clone repo về và muốn dựng lại môi trường để chạy flow OpenROAD cho `tf_lms_sv`.

## 1. Clone repo

```bash
git clone --recursive https://github.com/chuong-vo/adaptive-lms.git
cd adaptive-lms
```

## 2. Cách nhanh nhất cho máy mới

Chạy bootstrap từ thư mục script:

```bash
cd handoff/tf_lms_sv/scripts/openroad
./bootstrap_fresh_machine.sh --all
```

Script này sẽ:

1. chạy `sudo ./setup.sh`
2. chạy `./build_openroad.sh --local`
3. cài collateral riêng của `tf_lms_sv`
4. chạy lại full flow: `synth -> finish -> lvs -> drc`

## 3. Nếu muốn làm từng giai đoạn

### 3.1 Cài dependency và build tool

```bash
cd handoff/tf_lms_sv/scripts/openroad
./bootstrap_fresh_machine.sh --deps --build
```

### 3.2 Cài môi trường cho `tf_lms_sv`

```bash
./setup_env.sh
./run_flow.sh check
```

### 3.3 Chạy lại full flow

```bash
./run_flow.sh rerun
```

## 4. Chạy từng bước

```bash
./run_flow.sh synth
./run_flow.sh floorplan
./run_flow.sh place
./run_flow.sh cts
./run_flow.sh route
./run_flow.sh finish
./run_flow.sh lvs
./run_flow.sh drc
```

## 5. Kết quả nằm ở đâu

- Flow output: `flow/results/nangate45/tf_lms_sv/base/`
- Report: `flow/reports/nangate45/tf_lms_sv/base/`
- Log: `flow/logs/nangate45/tf_lms_sv/base/`
- Bộ artifact đã gom: `handoff/tf_lms_sv/`
- Signoff copy: `handoff/tf_lms_sv/signoff/`

## 6. File quan trọng

- Hướng dẫn rerun: `handoff/tf_lms_sv/scripts/openroad/README.md`
- Script máy mới: `handoff/tf_lms_sv/scripts/openroad/bootstrap_fresh_machine.sh`
- Script cài env local: `handoff/tf_lms_sv/scripts/openroad/setup_env.sh`
- Script chạy flow: `handoff/tf_lms_sv/scripts/openroad/run_flow.sh`
- Design config: `flow/designs/nangate45/tf_lms_sv/config.mk`

## 7. Ghi chú

- Quy trình này giả định máy chạy Linux phù hợp với ORFS local build.
- `--all` sẽ mất khá nhiều thời gian vì phải build OpenROAD/Yosys trước.
- Nếu chỉ cần xem tài liệu, report và ảnh có sẵn thì không cần rerun; xem trực tiếp trong `handoff/tf_lms_sv/`.
