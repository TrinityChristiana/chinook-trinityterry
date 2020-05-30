-- SQLite

-- -- non_usa_customers.sql: Provide a query showing Customers (just their full names, customer ID and country) who are not in the US.
-- SELECT c.FirstName, c.LastName, c.CustomerId, c.Country from Customer as c WHERE c.Country IS NOT "USA";

-- -- brazil_customers.sql: Provide a query only showing the Customers from Brazil.
-- Select * FROM Customer as c WHERE c.Country IS "Brazil";

-- -- brazil_customers_invoices.sql: Provide a query showing the Invoices of customers who are from Brazil. The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.
-- SELECT c.FirstName, c.LastName, i.InvoiceId, i.InvoiceDate, i.BillingCountry FROM Invoice as i JOIN Customer as c ON c.CustomerId == i.CustomerId WHERE c.Country IS "Brazil";

-- -- sales_agents.sql: Provide a query showing only the Employees who are Sales Agents.
-- SELECT * FROM Employee as e WHERE e.Title == "Sales Support Agent";

-- -- unique_invoice_countries.sql: Provide a query showing a unique/distinct list of billing countries from the Invoice table.
-- SELECT i.BillingCountry 'Billing Countries' from Invoice as i GROUP BY i.BillingCountry

-- -- sales_agent_invoices.sql: Provide a query that shows the invoices associated with each sales agent. The resultant table should include the Sales Agent's full name.
-- SELECT 
--     i.*, e.FirstName  || ' ' || e.LastName 'Sales Agent', 
--     c.FirstName || ' '|| c.LastName 'Customer'
-- FROM Invoice as i 
-- LEFT JOIN Customer as c 
--     ON c.CustomerId == i.CustomerId 
-- LEFT JOIN Employee as e 
--     ON e.EmployeeId == c.SupportRepId 
-- ORDER BY i.InvoiceId;

-- -- invoice_totals.sql: Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.
-- SELECT 
--     i.Total 'Invoice Total', 
--     c.FirstName || ' ' || c.LastName 'Customer', 
--     c.Country 'Customer Country', 
--     e.FirstName || ' ' || c.LastName 'Sales Agent'
-- FROM Invoice as i 
-- LEFT JOIN Customer as c 
--     ON c.CustomerId == i.CustomerId
-- LEFT JOIN Employee as e 
--     ON e.EmployeeId == c.SupportRepId;

-- -- total_invoices_{year}.sql: How many Invoices were there in 2009 and 2011?
-- SELECT COUNT(*) '# of Invoices from 2009/2011' FROM Invoice as i WHERE i.InvoiceDate LIKE "2011%" OR i.InvoiceDate LIKE "2009%";

-- -- total_sales_{year}.sql: What are the respective total sales for each of those years?
-- SELECT 
--     SUM(i.total) 'Sales Total',
--     STRFTIME('%Y', i.InvoiceDate) InvoiceYear
-- FROM Invoice as i
-- WHERE STRFTIME('%Y', i.InvoiceDate) == "2009" OR STRFTIME('%Y', i.InvoiceDate) == "2011"
-- GROUP BY InvoiceYear;

-- -- invoice_37_line_item_count.sql: Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37.
-- SELECT 
--     Count(*)  'Items for InvoiceId 37'
-- from InvoiceLine as il
-- WHERE il.InvoiceId == 37;

-- -- line_items_per_invoice.sql: Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice. HINT: GROUP BY
-- SELECT 
--     il.InvoiceId 'Invoice #',
--     Count(il.InvoiceId) 'Items' 
-- from InvoiceLine as il
-- GROUP BY il.InvoiceId;

-- -- line_item_track.sql: Provide a query that includes the purchased track name with each invoice line item.
-- SELECT 
--     il.InvoiceLineId,
--     il.InvoiceId,
--     il.TrackId,
--     t.Name,
--     il.UnitPrice,
--     il.Quantity
-- FROM InvoiceLine il
-- INNER JOIN Track t
-- ON t.TrackId == il.TrackId;

-- -- line_item_track_artist.sql: Provide a query that includes the purchased track name AND artist name with each invoice line item.
-- SELECT 
--     il.InvoiceLineId,
--     il.UnitPrice,
--     il.Quantity,
--     il.InvoiceId,
--     t.TrackId,
--     t.Name 'Track Name',
--     ar.ArtistId,
--     ar.Name 'Artist Name'
-- from InvoiceLine il
-- LEFT JOIN Track t ON t.TrackId == il.TrackId
-- LEFT JOIN Album al ON al.AlbumId == t.AlbumId
-- LEFT JOIN Artist ar ON ar.ArtistId == al.AlbumId;

-- -- country_invoices.sql: Provide a query that shows the # of invoices per country. HINT: GROUP BY
-- SELECT 
--     COUNT(i.BillingCountry) '# of Invoices',
--     i.BillingCountry 'Country'
-- FROM Invoice i
-- GROUP BY i.BillingCountry;
------------------------------

-- playlists_track_count.sql: Provide a query that shows the total number of tracks in each playlist. The Playlist name should be include on the resulant table.

-- tracks_no_id.sql: Provide a query that shows all the Tracks, but displays no IDs. The result should include the Album name, Media type and Genre.

-- invoices_line_item_count.sql: Provide a query that shows all Invoices but includes the # of invoice line items.

-- sales_agent_total_sales.sql: Provide a query that shows total sales made by each sales agent.

-- top_2009_agent.sql: Which sales agent made the most in sales in 2009?

-- Hint: Use the MAX function on a subquery.

-- top_agent.sql: Which sales agent made the most in sales over all?

-- sales_agent_customer_count.sql: Provide a query that shows the count of customers assigned to each sales agent.

-- sales_per_country.sql: Provide a query that shows the total sales per country.

-- top_country.sql: Which country's customers spent the most?

-- top_2013_track.sql: Provide a query that shows the most purchased track of 2013.

-- top_5_tracks.sql: Provide a query that shows the top 5 most purchased tracks over all.

-- top_3_artists.sql: Provide a query that shows the top 3 best selling artists.

-- top_media_type.sql: Provide a query that shows the most purchased Media Type.