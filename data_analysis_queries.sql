-- Customer names for ABBA performance
SELECT customer.name FROM customer JOIN ticket USING(idCustomer) JOIN performance USING (idPerformance) JOIN artist USING (idArtist)
WHERE artist.name='ABBA' and type='A';


-- Artists and attendees' number
SELECT artist.name AS Artist, COUNT(DISTINCT ticket.idCustomer) AS Attendees FROM artist JOIN performance USING(idArtist) JOIN ticket USING(idPerformance) GROUP BY artist.name ORDER BY Attendees DESC;

-- Top 3 music genres
SELECT genreName as Genre, (SELECT AVG(artist.performanceFee) FROM artist WHERE artist.idGenre=genre.idGenre) AS 'Average Fee' FROM genre ORDER BY 'Average Fee' DESC LIMIT 3;

-- TOP 3 Paid Artists
SELECT name, performanceFee FROM artist ORDER BY performanceFee DESC LIMIT 3;