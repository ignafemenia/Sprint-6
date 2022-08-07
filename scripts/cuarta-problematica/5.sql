CREATE TRIGGER log_account_after_updaten AFTER UPDATE on cuenta
WHEN old.balance <> new.balance or
 old.iban <> new.iban or
 old.account_type_id <> new.account_type_id
BEGIN
    INSERT INTO auditoria_cuenta(old_balance, new_balance, old_iban, new_iban, old_type, new_type, old_id, new_id);
	VALUES(old_balance, new_balance, old_iban, new_iban, old_type, new_type, old_id, new_id);
END;