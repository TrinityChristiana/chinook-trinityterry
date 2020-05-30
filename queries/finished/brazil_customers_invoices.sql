--  Provide a query showing the Invoices of customers who are from Brazil. The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.

SELECT c.FirstName, c.LastName, i.InvoiceId, i.InvoiceDate, i.BillingCountry FROM Invoice as i JOIN Customer as c ON c.CustomerId == i.CustomerId WHERE c.Country IS "Brazil";