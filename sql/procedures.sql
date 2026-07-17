CREATE OR REPLACE PROCEDURE update_customer_city
(
    p_customer_id NUMBER,
    p_city VARCHAR2
)
AS
BEGIN
    UPDATE customers
    SET city = p_city
    WHERE customer_id = p_customer_id;

    COMMIT;
END;
/

