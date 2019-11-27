$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'


def directors_totals(nds)

   name_index = 0


    result = {}



  while name_index < nds.length do 
    name = nds[name_index][:name]
    result[name] = 0
    movie_index = 0


    while movie_index < nds[name_index][:movies].length do 
      result[name] += nds[name_index][:movies][movie_index][:worldwide_gross]
      movie_index += 1
    end
  
    name_index += 1
 
 
  end


  nil
  result


end