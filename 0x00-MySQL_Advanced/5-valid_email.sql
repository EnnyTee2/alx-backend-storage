-- a SQL script that creates a trigger that resets
-- the attribute valid_email only when the email has been changed.

CREATE TRIGGER reset_attr BEFORE UPDATE ON users FOR EACH ROW
SET valid_email = 0 IF NEW.email != OLD.email;
