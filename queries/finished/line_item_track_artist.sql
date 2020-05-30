-- line_item_track_artist.sql: Provide a query that includes the purchased track name AND artist name with each invoice line item.

SELECT 
    il.InvoiceLineId,
    il.UnitPrice,
    il.Quantity,
    il.InvoiceId,
    t.TrackId,
    t.Name 'Track Name',
    ar.ArtistId,
    ar.Name 'Artist Name'
from InvoiceLine il
LEFT JOIN Track t ON t.TrackId == il.TrackId
LEFT JOIN Album al ON al.AlbumId == t.AlbumId
LEFT JOIN Artist ar ON ar.ArtistId == al.AlbumId;