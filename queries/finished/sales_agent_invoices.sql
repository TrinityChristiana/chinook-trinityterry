-- Provide a query that shows the invoices associated with each sales agent. The resultant table should include the Sales Agent's full name.

SELECT 
    i.*, e.FirstName  || ' ' || e.LastName 'Sales Agent', 
    c.FirstName || ' '|| c.LastName 'Customer'
FROM Invoice as i 
LEFT JOIN Customer as c 
    ON c.CustomerId == i.CustomerId 
LEFT JOIN Employee as e 
    ON e.EmployeeId == c.SupportRepId 
ORDER BY i.InvoiceId;