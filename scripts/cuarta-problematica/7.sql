CREATE TABLE movimientos (
    transaction_id INT NOT NULL PRIMARY KEY,
    account_id INT NOT NULL,
    operation_tipe TEXT NOT NULL,
    amount INT NOT NULL,
    changed_at TEXT NOT NULL);
BEGIN UPDATE cuenta
SET balance = balance - 1000
WHERE account_id = 200;
END;

INSERT INTO movimientos(transaction_id,account_id,operation_tipe,amount,changed_at) VALUES(100,100,'-',1000,datetime('now'));