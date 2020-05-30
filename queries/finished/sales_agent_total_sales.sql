-- Provide a query that shows total sales made by each sales agent.

SELECT 
    e.FirstName || ' ' || e.LastName 'Employee Name',
    ROUND(SUM(i.Total), 2) as 'Total Sales'
FROM Employee e
LEFT JOIN Customer c ON c.SupportRepId == e.EmployeeId
LEFT JOIN Invoice i ON i.CustomerId == c.CustomerId
WHERE e.Title == "Sales Support Agent"
GROUP BY e.EmployeeId;