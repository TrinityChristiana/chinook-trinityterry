-- Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice. HINT: GROUP BY

SELECT 
    il.InvoiceId 'Invoice #',
    Count(il.InvoiceId) 'Items' 
from InvoiceLine as il
GROUP BY il.InvoiceId;