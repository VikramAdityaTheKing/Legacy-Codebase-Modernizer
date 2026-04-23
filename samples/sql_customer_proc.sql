CREATE PROCEDURE find_customer
  @ssn VARCHAR(20)
AS
BEGIN
  SELECT id, name, ssn
  FROM customers
  WHERE ssn = @ssn
END
