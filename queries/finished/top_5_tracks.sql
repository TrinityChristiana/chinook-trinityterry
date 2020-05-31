-- Provide a query that shows the top 5 most purchased tracks over all.

SELECT
    t.Name,
    COUNT(t.TrackId) TimesPurchases
FROM InvoiceLine il
JOIN Track t ON t.TrackId == il.TrackId
JOIN Invoice i on i.InvoiceId == il.InvoiceId
GROUP BY t.TrackId
HAVING TimesPurchases in 
    (
        SELECT 
            y.TimesCount
        FROM 
            (
            SELECT
                COUNT(t.TrackId) TimesCount
            FROM InvoiceLine il
            JOIN Track t ON t.TrackId == il.TrackId
            JOIN Invoice i on i.InvoiceId == il.InvoiceId
            GROUP BY t.TrackId
            ORDER BY TimesCount DESC
            ) 
            y
        GROUP BY y.TimesCount
        ORDER BY y.TimesCount DESC
        LIMit 5
    )
ORDER BY TimesPurchases DESC;
