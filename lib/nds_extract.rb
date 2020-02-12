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
  
  # we create a movie index which is equal to 0 because we want to now find the total gross for the director
  # we can only find this out by digging in deeper, reason why we created a movie index 
  # we then created a variable "movies" that is equal to "director data" that we just passed through the method
  # the symbol is inside the brackets because we are now accessing the information inside :movies (Hence how we are going deeper!)
  # the total gross will be equal to 0 because we have yet to add onto it (that will change very soon!)
  movie_index = 0
  movies = director_data[:movies]
  total_gross = 0


  # we create a while loop so we can perform what's needed to get the gross for each director
  # while the movie index (which is 0) is less than the length of each movies directed it will execute
  while movie_index < movies.length do 
    
    # we created a variable total gross which will add the total gross to the movies worldwide_gross
    # then we iterate the index by 1 so we can keep adding the gross onto the total gross for that specific director 
    total_gross += movies[movie_index][:worldwide_gross]
    movie_index += 1
  end
  
  
  p total_gross
end
  
