-- Provide a query that shows the count of customers assigned to each sales agent.

SELECT 
    e.FirstName || ' ' || e.LastName 'Employee Name',
    count(c.CustomerId) CustomerCount
FROM Customer c
LEFT JOIN Employee e ON c.SupportRepId == e.EmployeeId
GROUP BY e.EmployeeId;