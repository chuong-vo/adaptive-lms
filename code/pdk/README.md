# PDK Layout

Quy ước đặt tên:

- `freepdk45_*`: bộ 45nm dựa trên FreePDK45
- `nangate45_*`: bộ thư viện Nangate 45nm
- `saed32nm_*`: bộ SAED/iPDK 32nm
- `tsmc65_*`: bộ thư viện logic 65nm
- `tsmc180_*`: bộ analog/training 180nm

Các thư mục chính:

- `freepdk45_mflowgen`: bộ FreePDK45 + standard cells theo repo mflowgen, phù hợp nhất để thử flow học thuật `DC -> ICC`
- `freepdk45_local`: bộ FreePDK45 local cũ, phù hợp hơn với `DC -> Encounter`
- `nangate45_icc_lab`: bundle Nangate/ICC lab local
- `saed32nm_ipdk`: iPDK SAED 32nm thiên về process/backend/custom
- `saed32nm_library_tree`: cây thư viện 32nm đi kèm trong `Digital_Lib`
- `tsmc65_logic_lib`: thư viện logic 65nm cho synthesis/timing
- `tsmc180_analog_training`: PDK analog training 180nm

Thư mục phụ:

- `archives`: các gói nén gốc giữ lại để đối chiếu
- `legacy`: cây thư mục cũ được giữ lại nguyên trạng để truy vết nguồn
