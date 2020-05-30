-- Provide a query showing a unique/distinct list of billing countries from the Invoice table.

SELECT i.BillingCountry 'Billing Countries' from Invoice as i GROUP BY i.BillingCountry