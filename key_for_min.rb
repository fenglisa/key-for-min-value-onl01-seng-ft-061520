# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value
require "pry"

def key_for_min_value(name_hash)
  values = []
  qualify = []
  i = 0
  values << name_hash.collect {|item,value| value}
  values = values[0]
  while i < values.length
    if values[i] < values[i+1]
      qualify << values[i]
    elsif values[i] > values[i+1]
      qualify << values[i+1]
    end
    i+=1
  end
  qualify.last
  name_hash.collect do |item,value|
    if name_hash[item] == qualify.last
      return item
    end
  end
end