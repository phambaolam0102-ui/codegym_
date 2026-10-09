# Thực hành: Chỉ mục trong MySQL

## Mục tiêu
Thực hành tạo chỉ mục và so sánh kế hoạch thực thi truy vấn trước và sau khi tạo INDEX.

## Chuẩn bị
- MySQL và MySQL Workbench.
- CSDL mẫu `classicmodels` (tải từ https://www.mysqltutorial.org/mysql-sample-database.aspx và import trước).

## Thực hiện
Mở `using_index.sql` trong MySQL Workbench và chạy **từng câu lệnh theo thứ tự**, quan sát các cột `type`, `possible_keys`, `key`, `rows` trong kết quả `EXPLAIN`.

1. Trước khi tạo chỉ mục: dùng `EXPLAIN` với `customerName`.
2. Tạo chỉ mục `idx_customerName`, chạy lại `EXPLAIN` và so sánh.
3. Tạo chỉ mục kết hợp `idx_full_name(contactFirstName, contactLastName)` và kiểm tra truy vấn theo tên.
4. Xóa chỉ mục kết hợp `idx_full_name`; dùng `SHOW INDEX` xác nhận.

**Lưu ý:** Nếu đã chạy bài trước đó, lệnh `ADD INDEX` có thể báo chỉ mục tồn tại. Hãy xóa chỉ mục cũ trước khi thực hiện lại. `EXPLAIN` hiển thị kế hoạch truy vấn và số hàng *ước tính*, không đo thời gian chính xác. Do bộ dữ liệu mẫu nhỏ, MySQL có thể chọn quét bảng ngay cả khi có chỉ mục.

## Minh chứng cần chụp
1. Danh sách bảng của `classicmodels` và dữ liệu `customers`.
2. Kết quả `EXPLAIN` trước khi tạo chỉ mục.
3. Kết quả `EXPLAIN` sau khi tạo `idx_customerName`.
4. Kết quả `EXPLAIN` với chỉ mục kết hợp.
5. Kết quả `SHOW INDEX` sau khi xóa `idx_full_name`.

## Kết luận
Chỉ mục có thể giúp MySQL truy xuất dữ liệu hiệu quả hơn khi tìm kiếm các giá trị được đánh chỉ mục, đổi lại tốn thêm dung lượng và chi phí khi ghi dữ liệu.
