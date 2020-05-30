-- Which country's customers spent the most?

SELECT 
    i.BillingCountry 'Country',
    SUM(i.Total) Sales
FROM Invoice i
GROUP BY i.BillingCountry
ORDER BY Sales DESC
LIMIT 1;