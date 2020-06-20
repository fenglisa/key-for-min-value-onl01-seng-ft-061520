# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value
require "pry"

def key_for_min_value(name_hash)
  numbers = []
  qualify = []
  numbers << name_hash.collect {|item,number| number}
  numbers = numbers[0]
  binding.pry
  while i < numbers.length
    i = 0
    if numbers[i] < numbers[i+1]
      qualify << numbers[i]
    elsif numbers[i] > numbers[i+1]
      qualify << numbers[i+1]
    end
    i+=1
  end
  qualify.last
  name_hash.collect do |item,number|
    if name_hash[item] == qualify.last
      return item
    end
  end
end