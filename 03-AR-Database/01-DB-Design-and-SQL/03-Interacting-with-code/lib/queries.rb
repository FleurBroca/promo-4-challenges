require 'sqlite3'

def number_of_rows(db, table_name)
  # TODO: count number of rows in table table_name
  query = "SELECT COUNT(*) FROM #{table_name}"
  a = db.execute(query)
  a.flatten[0]
end

def sorted_artists(db)
  # TODO: return array of artists' names sorted alphabetically
  query = "SELECT name FROM artists ORDER BY name"
  a = db.execute(query)
  a.flatten
end

def love_tracks(db)
  # TODO: return array of love songs. Use the where and like SQL conditions.
  query = "SELECT name FROM tracks WHERE name LIKE '%love%'"
  a = db.execute(query)
  a.flatten
end

def long_tracks(db, min_length)
  # TODO: return tracks verifying: duration > min_length (minutes).
  # you can use the comparison operator > in SQL
  x = min_length * 60000
  query = "SELECT name FROM tracks WHERE milliseconds > #{x}"
  a = db.execute(query)
  a.flatten
end
