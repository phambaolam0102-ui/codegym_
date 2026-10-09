# Thực hành Stored Procedure trong MySQL

## Mục tiêu
Tạo, gọi và thay đổi Stored Procedure trên cơ sở dữ liệu mẫu `classicmodels` theo bài thực hành CodeGym.

## Yêu cầu
- MySQL và MySQL Workbench (hoặc MySQL client).
- Đã import CSDL `classicmodels`, có bảng `customers`.

## Cách thực hiện
1. Mở MySQL Workbench, chọn kết nối MySQL.
2. Mở file `stored_procedure.sql`.
3. Thực thi lần lượt các khối lệnh trong file.
4. Kiểm tra kết quả lần gọi đầu: toàn bộ khách hàng.
5. Kiểm tra kết quả sau khi tạo lại thủ tục: khách hàng có `customerNumber = 175` (nếu dữ liệu mẫu có mã này).

## Nội dung
- `CREATE PROCEDURE findAllCustomers()` với `SELECT * FROM customers`.
- `CALL findAllCustomers()`.
- `DROP PROCEDURE IF EXISTS` và tạo lại thủ tục để lọc `customerNumber = 175`.
- `CALL findAllCustomers()` lần nữa.

## Minh chứng nên chụp
1. Chạy `USE classicmodels` và hiển thị bảng `customers`.
2. Tạo procedure thành công và gọi lần đầu.
3. Xóa/tạo lại procedure và gọi lần hai với kết quả lọc mã 175.

## Lưu ý
MySQL không dùng `ALTER PROCEDURE` để sửa nội dung câu lệnh SQL trong thân thủ tục; cách thông dụng là xóa và tạo lại. File chứa `DROP PROCEDURE IF EXISTS`, vì vậy khi chạy lại sẽ thay thế thủ tục tên `findAllCustomers` đang tồn tại.
