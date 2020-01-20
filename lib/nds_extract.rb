$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
#require 'pp'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {
  }
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  #pp directors_database

  directors_index = 0
  while directors_index < directors_database.length do
    movies_index = 0
    result[directors_database[directors_index][:name]] = 0
    while movies_index < directors_database[directors_index][:movies].length do
      result[directors_database[directors_index][:name]] += directors_database[directors_index][:movies][movies_index][:worldwide_gross]
      movies_index += 1
    end
    directors_index += 1
  end
  result

end
