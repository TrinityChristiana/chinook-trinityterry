-- top_3_artists.sql: Provide a query that shows the top 3 best selling artists.

SELECT
    ar.Name,
    Count(ar.ArtistId) TimesCount
FROM InvoiceLine il
JOIN Track t ON t.TrackId == il.TrackId
JOIN Invoice i on i.InvoiceId == il.InvoiceId
JOIN Album al on al.AlbumId == t.AlbumId
JOIN Artist ar on ar.ArtistId == al.ArtistId
GROUP BY ar.ArtistId
HAVING TimesCount IN (
                    SELECT
                        Count(ar.ArtistId) TimesCount
                    FROM InvoiceLine il
                    JOIN Track t ON t.TrackId == il.TrackId
                    JOIN Invoice i on i.InvoiceId == il.InvoiceId
                    JOIN Album al on al.AlbumId == t.AlbumId
                    JOIN Artist ar on ar.ArtistId == al.ArtistId
                    GROUP BY ar.ArtistId
                    ORDER BY TimesCount DESC
                    LIMIT 3
                )
ORDER BY TimesCount DESC;