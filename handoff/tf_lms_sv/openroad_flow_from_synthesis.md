# OpenROAD flow từ bước Synthesis cho `tf_lms_sv`

## Phạm vi

Tài liệu này mô tả flow thực tế đã chạy cho design `tf_lms_sv` trong OpenROAD/ORFS, bắt đầu từ bước `synthesis` đến `DRC/LVS`.

- Design config: `flow/designs/nangate45/tf_lms_sv/config.mk`
- RTL đầu vào: `code/src/sv/rtl/adaptation_lms.sv`
- Constraint đầu vào: `code/constraints/tf_lms_sv.sdc`
- Platform: `nangate45`

## Tóm tắt các bước

1. `Synthesis`
2. `Floorplan`
3. `Placement`
4. `CTS`
5. `Global Route`
6. `Detailed Route + Fill`
7. `Finish`
8. `LVS`
9. `DRC`

## Lệnh chạy và tool tương đương

### Prefix chung

Các lệnh dưới đây đều dùng cùng một design config:

`make -C flow DESIGN_CONFIG=./designs/nangate45/tf_lms_sv/config.mk`

Trong máy hiện tại, khi chạy thực tế tôi dùng thêm:

`YOSYS_EXE=/home/chuongvo/tools/oss-cad/oss-cad-suite/bin/yosys OPENROAD_EXE=/usr/bin/openroad`

Riêng `LVS` và `DRC` cần thêm deck:

- `KLAYOUT_LVS_FILE=/tmp/FreePDK45_orfs3.lylvs`
- `KLAYOUT_DRC_FILE=/tmp/FreePDK45_beol_noant.lydrc`

### Tóm tắt theo bước

| Bước | Lệnh | Engine chạy thực tế | Phần mềm thương mại tương đương |
|---|---|---|---|
| `Synthesis` | `make -C flow DESIGN_CONFIG=./designs/nangate45/tf_lms_sv/config.mk synth` | `Yosys` + `OpenROAD` | `Synopsys Design Compiler`, `Cadence Genus` |
| `Floorplan` | `make -C flow DESIGN_CONFIG=./designs/nangate45/tf_lms_sv/config.mk floorplan` | `OpenROAD` | `Synopsys ICC2`, `Cadence Innovus` |
| `Placement` | `make -C flow DESIGN_CONFIG=./designs/nangate45/tf_lms_sv/config.mk place` | `OpenROAD` | `Synopsys ICC2 place_opt`, `Cadence Innovus place_opt` |
| `CTS` | `make -C flow DESIGN_CONFIG=./designs/nangate45/tf_lms_sv/config.mk cts` | `OpenROAD` | `Synopsys ICC2 clock_opt`, `Cadence Innovus CTS/ccopt` |
| `Route` | `make -C flow DESIGN_CONFIG=./designs/nangate45/tf_lms_sv/config.mk route` | `OpenROAD` | `Synopsys ICC2 route_opt`, `Cadence Innovus route/detail route` |
| `Finish` | `make -C flow DESIGN_CONFIG=./designs/nangate45/tf_lms_sv/config.mk finish` | `OpenROAD` | `Synopsys ICC2 signoff export`, `Cadence Innovus signoff/export` |
| `LVS` | `make -C flow DESIGN_CONFIG=./designs/nangate45/tf_lms_sv/config.mk KLAYOUT_LVS_FILE=/tmp/FreePDK45_orfs3.lylvs lvs` | `KLayout` | `Mentor Calibre LVS`, `Synopsys IC Validator LVS`, `Cadence Pegasus/PVS LVS` |
| `DRC` | `make -C flow DESIGN_CONFIG=./designs/nangate45/tf_lms_sv/config.mk KLAYOUT_DRC_FILE=/tmp/FreePDK45_beol_noant.lydrc drc` | `KLayout` | `Mentor Calibre DRC`, `Synopsys IC Validator DRC`, `Cadence Pegasus/PVS DRC` |

### Lệnh full flow

Nếu muốn chạy từ `synthesis` đến `finish` trong một lệnh:

`make -C flow DESIGN_CONFIG=./designs/nangate45/tf_lms_sv/config.mk YOSYS_EXE=/home/chuongvo/tools/oss-cad/oss-cad-suite/bin/yosys OPENROAD_EXE=/usr/bin/openroad all`

Sau đó chạy signoff riêng:

- `make -C flow DESIGN_CONFIG=./designs/nangate45/tf_lms_sv/config.mk OPENROAD_EXE=/usr/bin/openroad KLAYOUT_LVS_FILE=/tmp/FreePDK45_orfs3.lylvs lvs`
- `make -C flow DESIGN_CONFIG=./designs/nangate45/tf_lms_sv/config.mk KLAYOUT_DRC_FILE=/tmp/FreePDK45_beol_noant.lydrc drc`

---

## 1. Synthesis

### Mục đích

Chuyển RTL SystemVerilog thành gate-level netlist đã map sang thư viện standard-cell của `nangate45`, đồng thời tạo checkpoint logic đầu tiên để đi tiếp sang physical flow.

### Đầu vào

- RTL: `code/src/sv/rtl/adaptation_lms.sv`
- SDC: `code/constraints/tf_lms_sv.sdc`
- Design config: `flow/designs/nangate45/tf_lms_sv/config.mk`
- Liberty của platform: `flow/platforms/nangate45/lib/NangateOpenCellLibrary_typical.lib`

### Đầu ra

- Gate-level netlist: `flow/results/nangate45/tf_lms_sv/base/1_2_yosys.v`
- SDC sau synthesis: `flow/results/nangate45/tf_lms_sv/base/1_2_yosys.sdc`
- Database OpenROAD: `flow/results/nangate45/tf_lms_sv/base/1_synth.odb`
- SDC checkpoint: `flow/results/nangate45/tf_lms_sv/base/1_synth.sdc`
- Log: `flow/logs/nangate45/tf_lms_sv/base/1_2_yosys.log`, `flow/logs/nangate45/tf_lms_sv/base/1_synth.log`
- Report: `flow/reports/nangate45/tf_lms_sv/base/synth_check.txt`, `flow/reports/nangate45/tf_lms_sv/base/synth_stat.txt`

### Process

1. ORFS gọi Yosys để parse RTL, elaborate design, tối ưu logic và map cell sang thư viện `nangate45`.
2. Netlist gate-level được ghi ra `1_2_yosys.v`.
3. OpenROAD đọc netlist này cùng `.lib`, tạo database `1_synth.odb` để các bước physical dùng chung.
4. Tool chạy check cấu trúc và in thống kê cell/area.

### Lệnh chạy

`make -C flow DESIGN_CONFIG=./designs/nangate45/tf_lms_sv/config.mk synth`

### Tool chạy thực tế

- Frontend synthesis: `Yosys`
- Database/checkpoint và downstream handoff: `OpenROAD`

### Phần mềm tương đương

- `Synopsys Design Compiler`
- `Cadence Genus`

### Ý nghĩa của artifact

- `1_2_yosys.v` là netlist logic sau tổng hợp.
- `1_synth.odb` là checkpoint chính để sang floorplan.
- `synth_check.txt` xác nhận không có lỗi cấu trúc rõ ràng.
- `synth_stat.txt` cho biết thiết kế map ra bao nhiêu cell và area logic ban đầu.

---

## 2. Floorplan

### Mục đích

Tạo khung vật lý ban đầu của block: die/core size, rows, tracks, tapcell, PDN và checkpoint vật lý đầu tiên.

### Đầu vào

- Checkpoint synthesis: `flow/results/nangate45/tf_lms_sv/base/1_synth.odb`
- SDC synthesis: `flow/results/nangate45/tf_lms_sv/base/1_synth.sdc`
- LEF/tech LEF/platform rules từ `flow/platforms/nangate45/`
- Các tham số floorplan trong `flow/designs/nangate45/tf_lms_sv/config.mk`

### Đầu ra

- Floorplan checkpoint tổng: `flow/results/nangate45/tf_lms_sv/base/2_floorplan.odb`
- Floorplan SDC: `flow/results/nangate45/tf_lms_sv/base/2_floorplan.sdc`
- Checkpoint trung gian:
  - `flow/results/nangate45/tf_lms_sv/base/2_1_floorplan.odb`
  - `flow/results/nangate45/tf_lms_sv/base/2_2_floorplan_macro.odb`
  - `flow/results/nangate45/tf_lms_sv/base/2_3_floorplan_tapcell.odb`
  - `flow/results/nangate45/tf_lms_sv/base/2_4_floorplan_pdn.odb`
- Log:
  - `flow/logs/nangate45/tf_lms_sv/base/2_1_floorplan.log`
  - `flow/logs/nangate45/tf_lms_sv/base/2_3_floorplan_tapcell.log`
  - `flow/logs/nangate45/tf_lms_sv/base/2_4_floorplan_pdn.log`
- Report: `flow/reports/nangate45/tf_lms_sv/base/2_floorplan_final.rpt`

### Process

1. Tạo die/core theo utilization mục tiêu.
2. Sinh site rows, track grid và ràng buộc placement vật lý.
3. Chèn tapcell/endcap để đáp ứng yêu cầu well/substrate của standard-cell row.
4. Sinh power distribution network.
5. Ghi checkpoint vật lý để sang placement.

### Lệnh chạy

`make -C flow DESIGN_CONFIG=./designs/nangate45/tf_lms_sv/config.mk floorplan`

### Tool chạy thực tế

- `OpenROAD`

### Phần mềm tương đương

- `Synopsys ICC2`
- `Cadence Innovus`

### Ý nghĩa của artifact

- `2_floorplan.odb` là trạng thái layout đã có khung vật lý nhưng chưa place cell logic.
- `2_floorplan_final.rpt` cho biết timing rất sớm sau floorplan, chủ yếu để nhìn xu hướng setup/hold.
- `2_3_floorplan_tapcell.odb` và `2_4_floorplan_pdn.odb` chứng minh tapcell và lưới nguồn đã được dựng.

---

## 3. Placement

### Mục đích

Đặt vị trí tất cả standard cells vào floorplan, giảm wirelength, giảm congestion, hợp thức hóa vị trí cell và sửa các vi phạm điện cơ bản.

### Đầu vào

- Floorplan checkpoint: `flow/results/nangate45/tf_lms_sv/base/2_floorplan.odb`
- Floorplan SDC: `flow/results/nangate45/tf_lms_sv/base/2_floorplan.sdc`

### Đầu ra

- Placement checkpoint tổng: `flow/results/nangate45/tf_lms_sv/base/3_place.odb`
- Placement SDC: `flow/results/nangate45/tf_lms_sv/base/3_place.sdc`
- Checkpoint trung gian:
  - `flow/results/nangate45/tf_lms_sv/base/3_1_place_gp_skip_io.odb`
  - `flow/results/nangate45/tf_lms_sv/base/3_2_place_iop.odb`
  - `flow/results/nangate45/tf_lms_sv/base/3_3_place_gp.odb`
  - `flow/results/nangate45/tf_lms_sv/base/3_4_place_resized.odb`
  - `flow/results/nangate45/tf_lms_sv/base/3_5_place_dp.odb`
- Log:
  - `flow/logs/nangate45/tf_lms_sv/base/3_3_place_gp.log`
  - `flow/logs/nangate45/tf_lms_sv/base/3_4_place_resized.log`
  - `flow/logs/nangate45/tf_lms_sv/base/3_5_place_dp.log`
- Report:
  - `flow/reports/nangate45/tf_lms_sv/base/3_global_place.rpt`
  - `flow/reports/nangate45/tf_lms_sv/base/3_resizer.rpt`
  - `flow/reports/nangate45/tf_lms_sv/base/3_detailed_place.rpt`

### Process

1. `Global placement`: đặt cell theo tối ưu toàn cục để giảm wirelength và congestion.
2. `IO placement`: đặt các cổng I/O quanh biên block.
3. `Resizer`: chèn/buff, đổi cỡ cell nếu cần để cải thiện timing/slew/cap/fanout.
4. `Detailed placement`: legalize vị trí cell, loại overlap, ép cell bám vào site rows hợp lệ.

### Lệnh chạy

`make -C flow DESIGN_CONFIG=./designs/nangate45/tf_lms_sv/config.mk place`

### Tool chạy thực tế

- `OpenROAD`

### Phần mềm tương đương

- `Synopsys ICC2 place_opt`
- `Cadence Innovus place_opt`

### Ý nghĩa của artifact

- `3_3_place_gp.odb` là kết quả global placement.
- `3_4_place_resized.odb` cho thấy trạng thái sau khi resizer can thiệp.
- `3_5_place_dp.odb` là placement hợp lệ dùng làm đầu vào cho CTS.
- `3_global_place.rpt` dùng để xem setup/hold và congestion sau placement.
- `3_resizer.rpt` dùng để xem vi phạm slew/fanout/cap đã được dọn chưa.

---

## 4. CTS

### Mục đích

Xây dựng clock tree thật, phân phối clock đến tất cả sequential elements, giảm skew và sửa các bài toán timing tối thiểu bắt đầu xuất hiện rõ sau placement.

### Đầu vào

- Placement checkpoint: `flow/results/nangate45/tf_lms_sv/base/3_place.odb`
- Placement SDC: `flow/results/nangate45/tf_lms_sv/base/3_place.sdc`

### Đầu ra

- CTS checkpoint tổng: `flow/results/nangate45/tf_lms_sv/base/4_cts.odb`
- CTS SDC: `flow/results/nangate45/tf_lms_sv/base/4_cts.sdc`
- Checkpoint trung gian: `flow/results/nangate45/tf_lms_sv/base/4_1_cts.odb`
- Log: `flow/logs/nangate45/tf_lms_sv/base/4_1_cts.log`
- Report: `flow/reports/nangate45/tf_lms_sv/base/4_cts_final.rpt`

### Process

1. Phân tích clock net và danh sách sink.
2. Chèn clock buffers/inverters để tạo clock tree.
3. Propagate clock thật qua các nhánh của cây clock.
4. Chạy kiểm tra timing sau CTS, đặc biệt là skew và hold.

### Lệnh chạy

`make -C flow DESIGN_CONFIG=./designs/nangate45/tf_lms_sv/config.mk cts`

### Tool chạy thực tế

- `OpenROAD`

### Phần mềm tương đương

- `Synopsys ICC2 clock_opt`
- `Cadence Innovus CTS/ccopt`

### Ý nghĩa của artifact

- `4_cts.odb` là checkpoint đầu tiên đã có clock tree thật.
- `4_cts_final.rpt` là report quan trọng để xem skew, setup và hold sau CTS.
- Với design này, CTS là bước bắt đầu giải quyết dứt điểm các đường hold quá ngắn trong delay line.

---

## 5. Global Route

### Mục đích

Tạo route toàn cục để ước lượng đường đi của net trên các lớp metal, tính parasitic sơ bộ và sửa timing lần nữa với RC gần thực hơn.

### Đầu vào

- CTS checkpoint: `flow/results/nangate45/tf_lms_sv/base/4_cts.odb`
- CTS SDC: `flow/results/nangate45/tf_lms_sv/base/4_cts.sdc`

### Đầu ra

- Global-route checkpoint: `flow/results/nangate45/tf_lms_sv/base/5_1_grt.odb`
- Global-route SDC: `flow/results/nangate45/tf_lms_sv/base/5_1_grt.sdc`
- Route guide: `flow/results/nangate45/tf_lms_sv/base/route.guide`
- Log: `flow/logs/nangate45/tf_lms_sv/base/5_1_grt.log`
- Report: `flow/reports/nangate45/tf_lms_sv/base/5_global_route.rpt`

### Process

1. Tạo global routing guide cho từng net.
2. Dùng RC ước lượng để phân tích timing thực tế hơn placement ideal.
3. Chạy `repair_timing` sau global route để tiếp tục đóng hold/setup nếu cần.
4. Ghi checkpoint để detailed router sử dụng.

### Lệnh chạy

`make -C flow DESIGN_CONFIG=./designs/nangate45/tf_lms_sv/config.mk route`

Ghi chú: trong ORFS, `route` là target công khai; khi chạy target này flow sẽ đi qua `5_1_grt` rồi mới đến `5_2_route`.

### Tool chạy thực tế

- `OpenROAD`

### Phần mềm tương đương

- `Synopsys ICC2 route_opt`
- `Cadence Innovus route`

### Ý nghĩa của artifact

- `5_1_grt.odb` là checkpoint đã có định hướng route toàn cục.
- `route.guide` là đầu vào trực tiếp cho detailed routing.
- `5_global_route.rpt` cho biết timing sau khi đã tính đến parasitic ước lượng.

---

## 6. Detailed Route + Fill

### Mục đích

Đi dây thật theo DRC router, sau đó chèn fill cells/fill shapes cần thiết trước khi tạo kết quả cuối.

### Đầu vào

- Global-route checkpoint: `flow/results/nangate45/tf_lms_sv/base/5_1_grt.odb`
- Route guide: `flow/results/nangate45/tf_lms_sv/base/route.guide`
- Global-route SDC: `flow/results/nangate45/tf_lms_sv/base/5_1_grt.sdc`

### Đầu ra

- Detailed-route checkpoint: `flow/results/nangate45/tf_lms_sv/base/5_2_route.odb`
- Fillcell checkpoint: `flow/results/nangate45/tf_lms_sv/base/5_3_fillcell.odb`
- Route checkpoint tổng: `flow/results/nangate45/tf_lms_sv/base/5_route.odb`
- Route SDC: `flow/results/nangate45/tf_lms_sv/base/5_route.sdc`
- Log:
  - `flow/logs/nangate45/tf_lms_sv/base/5_2_route.log`
  - `flow/logs/nangate45/tf_lms_sv/base/5_3_fillcell.log`
- Report:
  - `flow/reports/nangate45/tf_lms_sv/base/5_route_drc.rpt`
  - `flow/reports/nangate45/tf_lms_sv/base/grt_antennas.log`
  - `flow/reports/nangate45/tf_lms_sv/base/drt_antennas.log`

### Process

1. Detailed router đi dây chi tiết theo route guide và design rules.
2. Router cố gắng loại các vi phạm spacing, short, min-area, via rule trong phạm vi deck router hiểu được.
3. Sau route, flow chèn fill cells để hoàn thiện mật độ logic hợp lệ hơn.
4. Ghi checkpoint route cuối để sang bước finish.

### Lệnh chạy

`make -C flow DESIGN_CONFIG=./designs/nangate45/tf_lms_sv/config.mk route`

Ghi chú: bước `Detailed Route + Fill` không có target công khai riêng trong flow này; nó nằm bên trong target `route` và sinh ra các checkpoint `5_2_route.*`, `5_3_fillcell.*`, `5_route.*`.

### Tool chạy thực tế

- `OpenROAD`

### Phần mềm tương đương

- `Synopsys ICC2 detail route`
- `Cadence Innovus detail route`

### Ý nghĩa của artifact

- `5_2_route.odb` là trạng thái sau detailed routing.
- `5_route.odb` là checkpoint route tổng quát sau khi bổ sung fill thích hợp.
- `5_2_route.log` là log cần đọc để xác nhận router kết thúc với `0` violation.
- `5_route_drc.rpt` là report DRC ở mức router nội bộ, không thay thế DRC signoff.

---

## 7. Finish

### Mục đích

Xuất toàn bộ artifact cuối cùng để signoff và giao nộp: DEF, GDS, SPEF, CDL, final netlist, final ODB, final SDC và các report tổng hợp.

### Đầu vào

- Route checkpoint: `flow/results/nangate45/tf_lms_sv/base/5_route.odb`
- Route SDC: `flow/results/nangate45/tf_lms_sv/base/5_route.sdc`
- Platform GDS/CDL/LEF của `nangate45`

### Đầu ra

- Fill checkpoint: `flow/results/nangate45/tf_lms_sv/base/6_1_fill.odb`
- GDS merge trung gian: `flow/results/nangate45/tf_lms_sv/base/6_1_merged.gds`
- Kết quả cuối:
  - `flow/results/nangate45/tf_lms_sv/base/6_final.odb`
  - `flow/results/nangate45/tf_lms_sv/base/6_final.def`
  - `flow/results/nangate45/tf_lms_sv/base/6_final.gds`
  - `flow/results/nangate45/tf_lms_sv/base/6_final.v`
  - `flow/results/nangate45/tf_lms_sv/base/6_final.sdc`
  - `flow/results/nangate45/tf_lms_sv/base/6_final.spef`
  - `flow/results/nangate45/tf_lms_sv/base/6_final.cdl`
- Log:
  - `flow/logs/nangate45/tf_lms_sv/base/6_1_fill.log`
  - `flow/logs/nangate45/tf_lms_sv/base/6_1_merge.log`
  - `flow/logs/nangate45/tf_lms_sv/base/6_cdl.log`
  - `flow/logs/nangate45/tf_lms_sv/base/6_report.log`
- Report:
  - `flow/reports/nangate45/tf_lms_sv/base/6_finish.rpt`
  - `flow/reports/nangate45/tf_lms_sv/base/final_placement.webp`
  - `flow/reports/nangate45/tf_lms_sv/base/final_routing.webp`
  - `flow/reports/nangate45/tf_lms_sv/base/final_congestion.webp`
  - `flow/reports/nangate45/tf_lms_sv/base/final_ir_drop.webp`
  - `flow/reports/nangate45/tf_lms_sv/base/final_worst_path.webp`
  - `flow/reports/nangate45/tf_lms_sv/base/final_all.webp`

### Process

1. Chèn metal fill/fill shapes cần thiết cho layout cuối.
2. Merge GDS của design với GDS của thư viện standard-cell để tạo top-level GDS hoàn chỉnh.
3. Trích RC và ghi `SPEF`.
4. Ghi final DEF, final gate-level Verilog, final SDC, final CDL.
5. Chạy report cuối cho timing, power, area, connectivity và các hình minh họa.

### Lệnh chạy

`make -C flow DESIGN_CONFIG=./designs/nangate45/tf_lms_sv/config.mk finish`

### Tool chạy thực tế

- `OpenROAD`

### Phần mềm tương đương

- `Synopsys ICC2 signoff/export`
- `Cadence Innovus signoff/export`

### Ý nghĩa của artifact

- `6_final.gds` là layout cuối cùng để fabrication/signoff.
- `6_final.def` là mô tả hình học và placement/routing ở mức DEF.
- `6_final.spef` là parasitic extraction dùng cho timing/back-annotation.
- `6_final.v` là netlist cuối của design sau physical implementation.
- `6_finish.rpt` là report timing/power/constraint chính để kết luận flow có sạch hay không.

---

## 8. LVS

### Mục đích

Kiểm tra layout cuối có mô tả đúng cùng một mạch với netlist tham chiếu hay không.

### Đầu vào

- GDS cuối: `flow/results/nangate45/tf_lms_sv/base/6_final.gds`
- CDL của design: `flow/results/nangate45/tf_lms_sv/base/6_final.cdl`
- CDL của thư viện standard-cell: `flow/platforms/nangate45/cdl/NangateOpenCellLibrary.cdl`
- File tham chiếu đã nối: `flow/objects/nangate45/tf_lms_sv/base/6_final_concat.cdl`
- LVS rule deck KLayout

### Đầu ra

- LVS database: `flow/results/nangate45/tf_lms_sv/base/6_lvs.lvsdb`
- Netlist trích từ layout: `flow/results/nangate45/tf_lms_sv/base/tf_lms_sv_extracted.cir`
- Log: `flow/logs/nangate45/tf_lms_sv/base/6_lvs.log`

### Process

1. OpenROAD đọc `6_final.odb` và ghi `6_final.cdl`.
2. Flow nối `6_final.cdl` với CDL của thư viện cell để tạo netlist tham chiếu `6_final_concat.cdl`.
3. KLayout đọc `6_final.gds`, trích xuất connectivity thành netlist layout.
4. KLayout so netlist trích từ layout với netlist tham chiếu.
5. Nếu instance/cell/pin/net/connectivity tương đương, LVS báo match.

### Lệnh chạy

`make -C flow DESIGN_CONFIG=./designs/nangate45/tf_lms_sv/config.mk KLAYOUT_LVS_FILE=/tmp/FreePDK45_orfs3.lylvs lvs`

### Tool chạy thực tế

- Netlist tham chiếu được chuẩn bị bởi `OpenROAD`
- So sánh LVS do `KLayout` chạy

### Phần mềm tương đương

- `Mentor Calibre LVS`
- `Synopsys IC Validator LVS`
- `Cadence Pegasus/PVS LVS`

### Ý nghĩa của artifact

- `tf_lms_sv_extracted.cir` là netlist thực sự đọc ra từ layout.
- `6_lvs.lvsdb` là database dùng để mở lại kết quả LVS trong KLayout.
- `6_lvs.log` là chỗ kết luận `Netlists match`.

---

## 9. DRC

### Mục đích

Kiểm tra layout cuối có vi phạm design rule của công nghệ hay không.

### Đầu vào

- GDS cuối: `flow/results/nangate45/tf_lms_sv/base/6_final.gds`
- DRC rule deck KLayout

### Đầu ra

- DRC database: `flow/reports/nangate45/tf_lms_sv/base/6_drc.lyrdb`
- DRC count report: `flow/reports/nangate45/tf_lms_sv/base/6_drc_count.rpt`
- Log: `flow/logs/nangate45/tf_lms_sv/base/6_drc.log`

### Process

1. KLayout đọc `6_final.gds`.
2. Rule deck duyệt qua các lớp hình học và kiểm tra spacing, width, enclosure, off-grid và các luật liên quan theo phạm vi deck.
3. Nếu có lỗi, chúng được ghi vào `.lyrdb`.
4. Flow đếm số lỗi trong `.lyrdb` và ghi ra `6_drc_count.rpt`.

### Lệnh chạy

`make -C flow DESIGN_CONFIG=./designs/nangate45/tf_lms_sv/config.mk KLAYOUT_DRC_FILE=/tmp/FreePDK45_beol_noant.lydrc drc`

### Tool chạy thực tế

- `KLayout`

### Phần mềm tương đương

- `Mentor Calibre DRC`
- `Synopsys IC Validator DRC`
- `Cadence Pegasus/PVS DRC`

### Ý nghĩa của artifact

- `6_drc.lyrdb` là database để mở trực tiếp vị trí lỗi trong KLayout.
- `6_drc_count.rpt` là chỉ số nhanh để biết tổng số lỗi DRC.
- `6_drc.log` cho biết deck nào đã chạy và quá trình chạy có hoàn tất hay không.

---

## Quan hệ đầu ra - đầu vào giữa các bước

- `1_synth.odb` -> đầu vào của `Floorplan`
- `2_floorplan.odb` -> đầu vào của `Placement`
- `3_place.odb` -> đầu vào của `CTS`
- `4_cts.odb` -> đầu vào của `Global Route`
- `5_1_grt.odb` + `route.guide` -> đầu vào của `Detailed Route`
- `5_route.odb` -> đầu vào của `Finish`
- `6_final.gds` + `6_final_concat.cdl` -> đầu vào của `LVS`
- `6_final.gds` -> đầu vào của `DRC`

## Tóm tắt logic của flow

1. `Synthesis` tạo mạch logic đã map cell.
2. `Floorplan` tạo khung vật lý để chứa mạch đó.
3. `Placement` đặt các cell vào vị trí hợp lệ và tối ưu sơ bộ.
4. `CTS` xây cây clock thật để timing có ý nghĩa vật lý hơn.
5. `Global Route` ước lượng đường dây và RC.
6. `Detailed Route` đi dây thật theo design rules.
7. `Finish` xuất toàn bộ artifact cuối.
8. `LVS` kiểm tra layout có đúng mạch hay không.
9. `DRC` kiểm tra layout có đúng luật công nghệ hay không.
