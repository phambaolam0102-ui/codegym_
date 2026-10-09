-- Bai thuc hanh: View trong MySQL
-- Co so du lieu: classicmodels
USE classicmodels;

-- 1. Tao View gom ma khach hang, ten khach hang va so dien thoai.
DROP VIEW IF EXISTS customer_views;
CREATE VIEW customer_views AS
SELECT customerNumber, customerName, phone
FROM customers;

-- Xem du lieu cua View.
SELECT * FROM customer_views;

-- 2. Cap nhat dinh nghia View: bo sung ho ten lien he va loc tai Nantes.
CREATE OR REPLACE VIEW customer_views AS
SELECT customerNumber, customerName, contactFirstName, contactLastName, phone
FROM customers
WHERE city = 'Nantes';

-- Kiem tra View sau khi cap nhat.
SELECT * FROM customer_views;

-- 3. Xoa View.
DROP VIEW customer_views;

-- Kiem tra View da duoc xoa (ket qua: khong co customer_views).
SHOW FULL TABLES FROM classicmodels WHERE Table_type = 'VIEW';
