-- THUC HANH: CHI MUC TRONG MYSQL
-- Yeu cau: da import co so du lieu classicmodels
USE classicmodels;

-- 1. Kiem tra truy van truoc khi tao chi muc
-- Neu da co idx_customerName tu lan chay truoc, can xoa truoc khi so sanh.
EXPLAIN SELECT * FROM customers WHERE customerName = 'Land of Toys Inc.';

-- 2. Tao chi muc va kiem tra lai
ALTER TABLE customers ADD INDEX idx_customerName(customerName);
EXPLAIN SELECT * FROM customers WHERE customerName = 'Land of Toys Inc.';

-- 3. Tao chi muc ket hop
ALTER TABLE customers ADD INDEX idx_full_name(contactFirstName, contactLastName);
EXPLAIN SELECT * FROM customers WHERE contactFirstName = 'Jean' OR contactFirstName = 'King';

-- 4. Xoa chi muc ket hop
ALTER TABLE customers DROP INDEX idx_full_name;
SHOW INDEX FROM customers;
