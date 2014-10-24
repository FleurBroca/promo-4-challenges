require 'sqlite3'

def detailed_tracks(db)
  # TODO: return the list of tracks with their album and artist
  query = "SELECT tr.name, al.title, ar.name
  FROM tracks tr
  JOIN albums al ON (tr.album_id = al.id)
  JOIN artists ar ON (al.artist_id = ar.id);"
  a = db.execute(query)
end

def stats_on(db, genre_name)
  # TODO: For the given category of music, return the number of
  # tracks and the average song length (as a stats hash)
  # you have to use a GROUP BY statement with aggregate SQL functions such as
  # COUNT and AVG. The method should return a Hash of statistics
  result = db.execute("SELECT COUNT(*),
    AVG(milliseconds)
    FROM tracks t
    JOIN genres g ON (g.id = t.genre_id)
    WHERE g.name = '#{genre_name}';").flatten
  length = (result[1] / 60_000).round(2)
  {
    category: genre_name,
    number_of_songs: result[0],
    avg_length: length
  }
end

def top_five_artists(db, genre_name)
  # TODO: return list of top 5 rock artists
end