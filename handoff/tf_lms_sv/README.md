Tập hợp file cho `tf_lms_sv`, gom theo mục đích và giữ nguyên file gốc trong repo.

Thư mục chính:
- `rtl/`: RTL SystemVerilog, RTL VHDL gốc, constraint
- `testbench/`: testbench mô phỏng
- `scripts/`: script chạy ModelSim, OpenROAD và KLayout deck đã dùng
- `artifacts/simulation/`: transcript và waveform DB của mô phỏng
- `artifacts/openroad/results/`: kết quả theo từng bước và file final (`.def`, `.gds`, `.v`, `.spef`, `.cdl`, `.lvsdb`)
- `artifacts/openroad/reports/`: report text và ảnh `.webp` của OpenROAD
- `artifacts/openroad/logs/`: log theo từng bước của OpenROAD
- `images/rtl/`: hình RTL/block diagram
- `images/openroad/`: ảnh layout/report để chụp minh chứng nhanh

Ghi chú:
- `scripts/openroad/klayout/FreePDK45_orfs_lvs.lylvs` là deck LVS đã vá để chạy với ORFS hiện tại.
- `scripts/openroad/klayout/FreePDK45_beol_noant.lydrc` là deck DRC đã dùng cho kiểm tra top-level backend (`BEOL + off-grid`).
- `scripts/openroad/setup_tools.sh`, `scripts/openroad/configure_flow.sh` và `scripts/openroad/flow.sh` là bộ script chuẩn để setup và chạy lại flow.
- Flow OpenROAD hiện dùng dữ liệu công nghệ từ `flow/platforms`; thư mục `code/pdk` không còn là dependency bắt buộc.
- Danh sách đầy đủ file nằm trong `MANIFEST.txt`.
