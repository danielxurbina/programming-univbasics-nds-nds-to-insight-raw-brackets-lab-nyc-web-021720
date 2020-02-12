$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
#pp directors_database

def directors_totals(nds)
result = {}

director_index = 0

while director_index < nds.length do
  
  current_director = nds[director_index][:name]
  result[current_director] = directors_gross(nds[director_index])
  director_index += 1

end

p result

end

def directors_gross(director_data)
  movie_index = 0
  movies = director_data[:movies]
  total_gross = 0

  while movie_index < movies.length do 
    total_gross += movies[movie_index][:worldwide_gross]
    movie_index += 1
  end
  
  total_gross
end
  
