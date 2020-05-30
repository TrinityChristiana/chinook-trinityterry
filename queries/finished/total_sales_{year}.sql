-- What are the respective total sales for each of those years?

SELECT 
    SUM(i.total) 'Sales Total',
    STRFTIME('%Y', i.InvoiceDate) InvoiceYear
FROM Invoice as i
WHERE STRFTIME('%Y', i.InvoiceDate) == "2009" OR STRFTIME('%Y', i.InvoiceDate) == "2011"
GROUP BY InvoiceYear;