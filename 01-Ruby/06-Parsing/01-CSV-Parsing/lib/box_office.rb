# Encoding: utf-8
require 'csv'

def most_successfull(number, max_year, file_name)
<<<<<<< HEAD


movies = []
csv_options = { col_sep: ','}
CSV.foreach(file_name, csv_options) do |row|
  movie = {
    :name => row[0],
    :year => row[1].to_i,
    :earnings => row[2].to_i
  }
  movies << movie
end
movies_date = []
movies.each do |movie|
  if movie[:year] < max_year
    movies_date << movie
  end
=======
  # TODO: return the number most successfull movies max_year
>>>>>>> 9d61b15d3c063513d54186c21faed5dfb4611be0
end
movies_date = movies_date.sort_by { | movie| - movie[:earnings] }
movies_date.take(number)
end

p most_successfull(10, 2000, "lib/movies.csv")
