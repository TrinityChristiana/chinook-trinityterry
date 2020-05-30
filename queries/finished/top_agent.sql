-- Which sales agent made the most in sales over all?
SELECT 
    e.FirstName || ' ' || e.LastName 'Name',
FROM Employee e
LEFT JOIN Customer c ON c.SupportRepId == e.EmployeeId
LEFT JOIN Invoice i ON i.CustomerId == c.CustomerId
WHERE e.Title == "Sales Support Agent" 
GROUP BY e.EmployeeId
ORDER BY  ROUND(SUM(i.Total), 2) DESC
LIMIT 1;