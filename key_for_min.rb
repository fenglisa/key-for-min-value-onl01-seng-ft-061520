# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value
require "pry"

def key_for_min_value(name_hash)
  if name_hash == {}
    return nil
  end
  
  numbers = []
  qualify = []
  numbers << name_hash.collect {|item,number| number}
  numbers = numbers[0]
  
  i = 0
  while i < numbers.length - 1
    if numbers[i] < numbers[i+1]
      qualify << numbers[i]
    end
    i+=1
  end
  if qualify == []
    qualify << numbers.last
  end
 
  name_hash.collect do |item,number|
    if name_hash[item] == qualify.last
      return item
    end
  end
end