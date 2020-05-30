-- Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.

SELECT 
    i.Total 'Invoice Total', 
    c.FirstName || ' ' || c.LastName 'Customer', 
    c.Country 'Customer Country', 
    e.FirstName || ' ' || c.LastName 'Sales Agent'
FROM Invoice as i 
LEFT JOIN Customer as c 
    ON c.CustomerId == i.CustomerId
LEFT JOIN Employee as e 
    ON e.EmployeeId == c.SupportRepId;