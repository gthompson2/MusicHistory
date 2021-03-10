SELECT
    Id,
    Title,
    SongLength,
    ReleaseDate,
    GenreId,
    ArtistId,
    AlbumId
FROM Song
WHERE SongLength > 100;

SELECT s.Title,
       a.ArtistName
  FROM Song s
       LEFT JOIN Artist a on s.ArtistId = a.id;

/* 
INSERT INTO Genre (Label) VALUES ('Techno');

update Song
set SongLength = 515
where Id = 18;

select SongLength from Song where Id = 18;

delete from Song where Id = 18;
*/

--Instrucions from chapter:

SELECT
    Label
    FROM Genre;

SELECT
    Id,
    ArtistName,
    YearEstablished
    FROM Artist
    ORDER BY ArtistName;

SELECT
    song.Title,
    artist.ArtistName
FROM Song song
    LEFT JOIN Artist artist on song.ArtistId = artist.id;

-- 4. All artists with a Pop Album:
SELECT
    artist.ArtistName,
    genre.Label
FROM Album
    LEFT JOIN Genre genre on album.GenreId = genre.id
    LEFT JOIN Artist artist on album.ArtistId = artist.id
WHERE GenreId = 2
group by artist.ArtistName, genre.Label;
     
-- 5. All artists with a Jazz or Rock Album:
SELECT
    artist.ArtistName,
    --album.ArtistId,
    genre.Label
FROM Album
    LEFT JOIN Genre genre on album.GenreId = genre.id
    LEFT JOIN Artist artist on album.ArtistId = artist.id
     WHERE GenreId = 2
     OR GenreId = 4;
-- 6. Albums with no songs:
SELECT
    Title
FROM Album
WHERE AlbumLength > 0;
--7. Add an artist to the Artist table:
INSERT INTO Artist (ArtistName, YearEstablished) VALUES ('Stevie Wonder', 1961);
--8. Add albums to the Album table:
INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) VALUES ('Songs in the Key of Live', '9/28/1976', 6278, 'Stevie Wonder', 28, 6);
--9. Add songs on the albums to the Song table:
INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Sir Duke', 232, '9/28/1976', 6, 28, 23);
INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('I Wish', 252, '9/28/1976', 6, 28, 23);
--10. Select for the song titles, album title, and artist name 
-- using LEFT JOIN and WHERE:

--11. Select and display how many songs exist on each album
-- use COUNT() and GROUP BY

select count(s.id) as SongCount, al.Title as AlbumTitle, ar.ArtistName
    from song s 
        left join Album al on s.AlbumId = al.Id
        left join Artist ar on al.ArtistId = ar.id
group by al.Title, ar.ArtistName


--12. 

--13. 

--14. 

select *
    from Artist ar JOIN ALbum al on ar.id = al.ArtistId

select count (distinct al.label), ar.ArtistName
    from Artist ar JOIN Album al on ar.id = al.ArtistId
group by ar.ArtistName
    having count (distinct al.label) > 1

--15. 

--16. 

select s.Title, s.SongLength
    from song s
where s.SongLength = (
    select max(s.SongLength)
        from song s
);

--17. 
