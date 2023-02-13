-- a SQL script that creates a trigger that resets
-- the attribute valid_email only when the email has been changed.

DELIMITER $$ ;
CREATE TRIGGER reset_attr BEFORE UPDATE ON users
FOR EACH ROW
BEGIN
	IF NEW.email != OLD.email THEN
		UPDATE users SET NEW.valid_email = 0;
	END IF;
END;$$
DELIMITER ;
