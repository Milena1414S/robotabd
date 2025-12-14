DELIMITER //

CREATE TRIGGER `trg_Products_BeforeUpdate`
BEFORE UPDATE ON `Products`
FOR EACH ROW
BEGIN
    SET NEW.updated_at = NOW();
END //

DELIMITER ;