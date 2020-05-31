-- top_2013_track.sql: Provide a query that shows the most purchased track of 2013.

SELECT
    t.Name,
    COUNT(t.TrackId) TimesPurchases
FROM InvoiceLine il
JOIN Track t ON t.TrackId == il.TrackId
JOIN Invoice i on i.InvoiceId == il.InvoiceId
WHERE STRFTIME('%Y', i.InvoiceDate) == "2013"
GROUP BY t.TrackId
HAVING  TimesPurchases == (SELECT
        COUNT(t.TrackId) TimesCount
    FROM InvoiceLine il
    JOIN Track t ON t.TrackId == il.TrackId
    JOIN Invoice i on i.InvoiceId == il.InvoiceId
    WHERE STRFTIME('%Y', i.InvoiceDate) == "2013"
    GROUP BY t.TrackId
    ORDER BY TimesCount DESC
    LIMIT 1)
ORDER BY TimesPurchases DESC;