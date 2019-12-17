$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
 director_index = 0  # index to change from director to director
 total  = {}  #empty hash to add total amount
 
 while director_index < nds.length do   # Go through directors 
   director = nds[director_index][:name]
   total[director] = 0 
   movie_index = 0 
   
   
   # Go through movies of each diretor totaling gross below
   
   while movie_index < nds[director_index][:movies].length do 
     total[director] += nds[director_index][:movies][movie_index][:worldwide_gross]
     movie_index += 1
   end
 
 # Once finished with all the movies move on to next director
   director_index += 1
 end
  total     
end
