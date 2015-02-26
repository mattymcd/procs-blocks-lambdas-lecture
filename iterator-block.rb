
def iterator(arr)
  index = 0
  while index < arr.length
    yield(arr[index])
    index += 1
  end
end


puts "printing the squares"
iterator([1, 2, 3]) { |number| puts number*number }

puts "printing the sums"
iterator([1, 2, 3]) { |number| puts number+number }

puts "printing the cubes"
iterator([1, 2, 3]) { |number| puts number**3 }

puts "printing to the 4th power"
iterator([1, 2, 3]) { |number| puts number**4 }
