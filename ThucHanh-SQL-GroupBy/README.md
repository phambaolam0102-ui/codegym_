# Thực hành: Sử dụng các hàm thông dụng trong SQL

## Mục tiêu
Luyện tập sử dụng `COUNT()`, `AVG()`, `GROUP BY`, `HAVING` và `ALL` trong MySQL.

## Yêu cầu
Sử dụng cơ sở dữ liệu `QuanLySinhVien` đã tạo ở bài trước, gồm bảng `Student` và `Mark`.

## Nội dung bài làm
1. Thống kê số lượng sinh viên theo địa chỉ.
2. Tính điểm trung bình các môn học của từng sinh viên.
3. Liệt kê sinh viên có điểm trung bình lớn hơn 15.
4. Tìm sinh viên có điểm trung bình lớn nhất (kể cả đồng hạng).

## Cách chạy
Mở MySQL Workbench, chọn kết nối MySQL rồi mở file `group_by.sql`. Đảm bảo CSDL `QuanLySinhVien` đã có dữ liệu, sau đó chạy lần lượt các truy vấn.

**Lưu ý:** File bài làm không tạo CSDL và không thêm dữ liệu; cần dùng CSDL từ bài thực hành trước.
