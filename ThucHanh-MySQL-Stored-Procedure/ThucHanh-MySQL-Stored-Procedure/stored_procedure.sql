-- BAI THUC HANH: STORED PROCEDURE TRONG MYSQL
-- Su dung CSDL classicmodels
USE classicmodels;

-- 1. Tao procedure dau tien: lay tat ca khach hang
DROP PROCEDURE IF EXISTS findAllCustomers;
DELIMITER //
CREATE PROCEDURE findAllCustomers()
BEGIN
    SELECT * FROM customers;
END //
DELIMITER ;

-- 2. Goi procedure
CALL findAllCustomers();

-- 3. Sua procedure bang cach xoa va tao lai
DROP PROCEDURE IF EXISTS findAllCustomers;
DELIMITER //
CREATE PROCEDURE findAllCustomers()
BEGIN
    SELECT * FROM customers WHERE customerNumber = 175;
END //
DELIMITER ;

-- 4. Goi lai procedure de kiem tra
CALL findAllCustomers();
