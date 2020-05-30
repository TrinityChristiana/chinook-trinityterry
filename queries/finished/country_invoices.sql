-- Provide a query that shows the # of invoices per country. HINT: GROUP BY

SELECT 
    COUNT(i.BillingCountry) '# of Invoices',
    i.BillingCountry 'Country'
FROM Invoice i
GROUP BY i.BillingCountry;