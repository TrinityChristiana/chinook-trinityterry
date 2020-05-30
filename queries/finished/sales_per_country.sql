-- Provide a query that shows the total sales per country.

SELECT 
    i.BillingCountry 'Country',
    SUM(i.Total) 'Sales'
FROM Invoice i
GROUP BY i.BillingCountry;