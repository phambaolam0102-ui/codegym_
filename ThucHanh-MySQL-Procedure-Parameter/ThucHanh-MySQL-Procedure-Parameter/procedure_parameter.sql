-- Bai thuc hanh: Truyen tham so vao Stored Procedure
-- Co so du lieu: classicmodels
USE classicmodels;

-- 1. Tham so IN: Tim khach hang theo ma
DROP PROCEDURE IF EXISTS getCusById;
DELIMITER //
CREATE PROCEDURE getCusById(IN cusNum INT)
BEGIN
    SELECT * FROM customers WHERE customerNumber = cusNum;
END //
DELIMITER ;
CALL getCusById(175);

-- 2. Tham so OUT: Dem so khach hang theo thanh pho
DROP PROCEDURE IF EXISTS GetCustomersCountByCity;
DELIMITER //
CREATE PROCEDURE GetCustomersCountByCity(
    IN in_city VARCHAR(50),
    OUT total INT
)
BEGIN
    SELECT COUNT(customerNumber)
    INTO total
    FROM customers
    WHERE city = in_city;
END //
DELIMITER ;
CALL GetCustomersCountByCity('Lyon', @total);
SELECT @total AS total_customers_in_Lyon;

-- 3. Tham so INOUT: Tang bo dem
DROP PROCEDURE IF EXISTS SetCounter;
DELIMITER //
CREATE PROCEDURE SetCounter(INOUT counter INT, IN inc INT)
BEGIN
    SET counter = counter + inc;
END //
DELIMITER ;
SET @counter = 1;
CALL SetCounter(@counter, 1); -- 2
CALL SetCounter(@counter, 1); -- 3
CALL SetCounter(@counter, 5); -- 8
SELECT @counter AS final_counter;
