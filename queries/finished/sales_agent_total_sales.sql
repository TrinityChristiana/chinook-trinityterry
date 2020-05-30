-- Provide a query that shows total sales made by each sales agent.

SELECT 
    e.FirstName || ' ' || e.LastName 'Employee Name',
    SUM(il.Quantity) 'Total Items sold',
    ROUND(SUM(i.Total), 2) as 'Total Sales'
FROM Employee e
LEFT JOIN Customer c ON c.SupportRepId == e.EmployeeId
LEFT JOIN Invoice i ON i.CustomerId == c.CustomerId
LEFT JOIN InvoiceLine il ON il.InvoiceId == i.InvoiceId
WHERE e.Title == "Sales Support Agent"
GROUP BY e.EmployeeId;