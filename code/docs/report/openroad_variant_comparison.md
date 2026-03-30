# So sánh 5 cấu hình floorplan cho `tf_lms_sv`

Các biến thể dưới đây được chạy độc lập bằng `FLOW_VARIANT`, do đó artifact không chồng lấn.

| Variant | `CORE_UTILIZATION / PLACE_DENSITY / MAX_UTILIZATION` | Die (DBU) | Final util | GRT WL (um) | DRT WL (um) | Slack (ns) | LVS | DRC |
| --- | --- | ---: | ---: | ---: | ---: | ---: | --- | ---: |
| `cmp_u25` | `25 / 0.30 / 60` | `400310` | `26%` | `71802` | `42130` | `15.703` | pass | `0` |
| `cmp_u30` | `30 / 0.38 / 65` | `365780` | `31%` | `69722` | `40556` | `15.747` | pass | `0` |
| `cmp_u35` | `35 / 0.45 / 70` | `338940` | `36%` | `67126` | `38793` | `15.746` | pass | `0` |
| `cmp_u40` | `40 / 0.50 / 75` | `317310` | `41%` | `65695` | `37445` | `15.734` | pass | `0` |
| `cmp_u45` | `45 / 0.55 / 80` | `299390` | `46%` | `64122` | `36211` | `15.736` | pass | `0` |

Nhận xét chính:

- Cả năm cấu hình đều đạt `LVS pass` và `DRC = 0`.
- Khi tăng mật độ, kích thước die giảm đều.
- `cmp_u45` cho die nhỏ nhất trong nhóm khảo sát, trong khi timing vẫn giữ dư địa lớn.

Hình layout:

- [cmp_u25.png](/home/chuongvo/adaptive-lms/code/docs/figures/cmp_u25.png)
- [cmp_u30.png](/home/chuongvo/adaptive-lms/code/docs/figures/cmp_u30.png)
- [cmp_u35.png](/home/chuongvo/adaptive-lms/code/docs/figures/cmp_u35.png)
- [cmp_u40.png](/home/chuongvo/adaptive-lms/code/docs/figures/cmp_u40.png)
- [cmp_u45.png](/home/chuongvo/adaptive-lms/code/docs/figures/cmp_u45.png)
