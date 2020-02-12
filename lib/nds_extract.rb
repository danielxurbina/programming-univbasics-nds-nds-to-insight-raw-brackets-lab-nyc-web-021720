$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
pp directors_database

def directors_totals(nds)
#creates a hash "result" that's empty 
result = {}

#you want to go through each director so the counter starts at 0 which is the beginning 
director_index = 0 

#create a while loop which will execute the iteration of finding the directors name
#while the directors index (which starts at 0) is less than the length of the entire array it will execute
while director_index < nds.length do
  
  #create a variable called current director that is equal to the array's index of the director and with this
  # it'll find the director's name with the symbol :name
  # then you push the directors name onto result which will then equal to directors gross which we will find by the directors index
  # then you iterate the index by 1 to find the next director 
  
  current_director = nds[director_index][:name]
  result[current_director] = directors_gross(nds[director_index])
  director_index += 1

end

# then you return the result back into the hash that we created in the beginning which was empty
# but now is full of directors names 
p result

end

# now we want to find the total gross of each director so we will create a method to find that out

#we create a method directors gross that passes an argument director data 
def directors_gross(director_data)
  
  #
  movie_index = 0
  movies = director_data[:movies]
  total_gross = 0

  while movie_index < movies.length do 
    total_gross += movies[movie_index][:worldwide_gross]
    movie_index += 1
  end
  
  total_gross
end
  
