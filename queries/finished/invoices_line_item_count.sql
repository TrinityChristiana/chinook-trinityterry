-- invoice_37_line_item_count.sql: Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37.

SELECT 
    Count(*)  'Items for InvoiceId 37'
from InvoiceLine as il
WHERE il.InvoiceId == 37;