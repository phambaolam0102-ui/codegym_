# Thực hành: View trong MySQL

## Mục tiêu
Tạo, truy vấn, cập nhật định nghĩa và xóa View trong cơ sở dữ liệu mẫu `classicmodels`.

## Cách chạy
1. Nhập cơ sở dữ liệu mẫu `classicmodels` vào MySQL nếu chưa có.
2. Mở file `using_view.sql` trong MySQL Workbench.
3. Chạy lần lượt các nhóm lệnh để quan sát kết quả trước khi chuyển sang bước tiếp theo.

## Nội dung
- Tạo `customer_views` với các cột `customerNumber`, `customerName`, `phone` từ `customers`.
- `SELECT * FROM customer_views;` để xem dữ liệu.
- `CREATE OR REPLACE VIEW` để thêm `contactFirstName`, `contactLastName` và lọc `city = 'Nantes'`.
- `DROP VIEW customer_views;` để xóa View.

**Lưu ý:** Sau khi chạy toàn bộ script, View đã bị xóa theo yêu cầu. Nếu muốn chụp minh chứng, chụp kết quả `SELECT` trước khi chạy lệnh `DROP VIEW`.

## Tham khảo
https://github.com/codegym-vn/jwbd-2023-using-view (nhánh `develop`)
