$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input


def gross_for_director(director_data)

  sub_total = 0 
  inner_length = director_data[:movies].length 
  column_index = 0 
  while column_index < inner_length  
     sub_total += director_data[:movies][column_index][:worldwide_gross]

      column_index += 1 
      end
    sub_total 
    
  end 


 
# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }



def directors_totals(nds)
  result = {}
  row_index = 0 
  while row_index < nds.length do 
    column_index = 0 
    while column_index < nds[row_index].length do 
        current_director = nds[row_index][:name]
        result[current_director] = gross_for_director(nds[row_index])
    column_index += 1 
end
    row_index += 1 
end 

p result 
end 
