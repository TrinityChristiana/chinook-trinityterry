-- Provide a query that shows all Invoices but includes the # of invoice line items.

SELECT 
    COUNT(i.InvoiceId) '# of items',
    * 
FROM Invoice i
LEFT JOIN InvoiceLine il 
    ON il.InvoiceId == i.InvoiceId
GROUP BY i.InvoiceId;