-- Provide a query that shows the most purchased Media Type.

SELECT
    mt.Name,
    COUNT(mt.MediaTypeId) TimesCount
FROM InvoiceLine il
JOIN Track t ON t.TrackId == il.TrackId
JOIN MediaType mt ON mt.MediaTypeId == t.MediaTypeId
GROUP BY mt.MediaTypeId
HAVING TimesCount IN (
    SELECT
        COUNT(mt.MediaTypeId) TimesCount
    FROM InvoiceLine il
    JOIN Track t ON t.TrackId == il.TrackId
    JOIN MediaType mt ON mt.MediaTypeId == t.MediaTypeId
    GROUP BY mt.MediaTypeId
    ORDER BY TimesCount DESC
    LIMIT 1
)
ORDER BY TimesCount DESC;