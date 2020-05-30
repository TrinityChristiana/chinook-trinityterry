--  How many Invoices were there in 2009 and 2011?
SELECT COUNT(*) '# of Invoices from 2009/2011' FROM Invoice as i WHERE i.InvoiceDate LIKE "2011%" OR i.InvoiceDate LIKE "2009%";