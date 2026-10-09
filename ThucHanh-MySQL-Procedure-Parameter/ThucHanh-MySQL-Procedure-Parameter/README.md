# Thực hành: Truyền tham số vào Stored Procedure (MySQL)

## Mục tiêu
Thực hành ba loại tham số `IN`, `OUT`, `INOUT` trong các Stored Procedure trên cơ sở dữ liệu mẫu `classicmodels`.

## Cách chạy
1. Cài MySQL, mở MySQL Workbench và nhập cơ sở dữ liệu `classicmodels` nếu chưa có.
2. Mở tệp `procedure_parameter.sql` trong MySQL Workbench.
3. Thực thi toàn bộ script bằng nút tia sét (Execute). Các lệnh `DROP PROCEDURE IF EXISTS` giúp có thể chạy lại script.

## Các yêu cầu
- **IN:** `getCusById(175)` trả về thông tin khách hàng có `customerNumber = 175`.
- **OUT:** `GetCustomersCountByCity('Lyon', @total)` lưu số khách hàng tại Lyon vào biến `@total`; `SELECT @total` hiển thị kết quả.
- **INOUT:** `SetCounter(@counter, inc)` nhận và cập nhật bộ đếm; từ 1, lần lượt cộng 1, 1, 5 cho kết quả cuối bằng **8**.

## Minh chứng cần chụp
1. Kết quả `CALL getCusById(175)`.
2. Kết quả `SELECT @total` sau khi gọi thủ tục đếm khách hàng tại Lyon.
3. Kết quả `SELECT @counter`, mong đợi bằng 8.

## Ghi chú
Số lượng khách hàng tại Lyon phụ thuộc dữ liệu thực tế của `classicmodels`. Bài tập này mới là mã nguồn để chạy kiểm tra; không tuyên bố đã chạy trên máy người nộp.
