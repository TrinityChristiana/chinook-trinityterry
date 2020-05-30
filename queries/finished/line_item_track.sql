-- Provide a query that includes the purchased track name with each invoice line item.

SELECT 
    il.InvoiceLineId,
    il.InvoiceId,
    il.TrackId,
    t.Name,
    il.UnitPrice,
    il.Quantity
FROM InvoiceLine il
INNER JOIN Track t
ON t.TrackId == il.TrackId;