-- Provide a query that shows the total number of tracks in each playlist. The Playlist name should be include on the resulant table.

SELECT 
    COUNT(pt.PlaylistId) '# of Tracks',
    p.Name 'Playlist Name'
FROM PlaylistTrack pt
INNER JOIN Playlist p ON p.PlaylistId == pt.PlaylistId
INNER JOIN Track t ON t.TrackId == pt.TrackId
GROUP BY pt.PlaylistId;