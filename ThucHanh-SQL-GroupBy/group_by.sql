-- Bài thực hành: Sử dụng các hàm thông dụng trong SQL
-- CSDL: QuanLySinhVien

USE QuanLySinhVien;

-- 1. Hiển thị số lượng sinh viên ở từng nơi
SELECT Address, COUNT(StudentId) AS 'Số lượng học viên'
FROM Student
GROUP BY Address;

-- 2. Tính điểm trung bình các môn học của mỗi học viên
SELECT S.StudentId, S.StudentName, AVG(M.Mark) AS 'Điểm trung bình'
FROM Student AS S
JOIN Mark AS M ON S.StudentId = M.StudentId
GROUP BY S.StudentId, S.StudentName;

-- 3. Hiển thị học viên có điểm trung bình lớn hơn 15
SELECT S.StudentId, S.StudentName, AVG(M.Mark) AS 'Điểm trung bình'
FROM Student AS S
JOIN Mark AS M ON S.StudentId = M.StudentId
GROUP BY S.StudentId, S.StudentName
HAVING AVG(M.Mark) > 15;

-- 4. Hiển thị học viên có điểm trung bình lớn nhất
SELECT S.StudentId, S.StudentName, AVG(M.Mark) AS 'Điểm trung bình'
FROM Student AS S
JOIN Mark AS M ON S.StudentId = M.StudentId
GROUP BY S.StudentId, S.StudentName
HAVING AVG(M.Mark) >= ALL (
    SELECT AVG(Mark)
    FROM Mark
    GROUP BY StudentId
);
