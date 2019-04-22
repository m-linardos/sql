-- Class, tonight's homework is to create the mma DB and write a 3 table join against it to mimic an invoice.
-- Let me know if you have any questions!


SELECT i.CustomerName as 'Customer Name', i.OrderDate, i.OrderNumber, l.Quantity, p.Description, p.Price, i.total
	FROM Invoice i
    INNER JOIN lineitem l
    ON i.id = l.invoiceid
    INNER JOIN Product p
    ON l.ProductID = p.ID;
    
    