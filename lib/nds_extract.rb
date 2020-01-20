$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

def directors_totals(nds)
  
  output = {}
  
  nds.size.times do |count|
    
    directorName = nds[count][:name]
    output[directorName] = 0
    
    for film in nds[count][:movies] do
      
      output[directorName] += film[:worldwide_gross]
      
    end
  
  end
  
  output
  
end
