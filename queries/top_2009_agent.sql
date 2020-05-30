-- Which sales agent made the most in sales in 2009?

SELECT 
    ROUND(SUM(i.Total), 2) as TotalSales
FROM Employee e
LEFT JOIN Customer c ON c.SupportRepId == e.EmployeeId
LEFT JOIN Invoice i ON i.CustomerId == c.CustomerId
WHERE e.Title == "Sales Support Agent"
GROUP BY e.EmployeeId;

-- SELECT * 
--    FROM Employee 
--    WHERE ID IN (SELECT ID 
--          FROM CUSTOMERS 
--          WHERE SALARY > 4500) ;