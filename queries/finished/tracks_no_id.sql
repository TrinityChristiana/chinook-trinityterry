-- Provide a query that shows all the Tracks, but displays no IDs. The result should include the Album name, Media type and Genre.

SELECT
    t.Name 'Track',
    a.Title 'Album',
    mt.Name 'Media Type',
    g.Name 'Genre',
    t.Composer,
    t.Milliseconds,
    t.Bytes,
    t.UnitPrice
FROM Track t
LEFT JOIN Album a ON a.AlbumId == t.AlbumId
LEFT JOIN MediaType mt ON t.MediaTypeId == mt.MediaTypeId
LEFT JOIN Genre g ON g.GenreId == t.GenreId;