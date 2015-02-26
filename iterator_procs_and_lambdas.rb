# r5: using procs and lambdas

### sending a block and creating a proc in the method declaration
def iterator(arr, &operation)
  index = 0
  while index < arr.length
    puts operation.call(arr[index])
    index += 1
  end
end

iterator([1, 2, 3]) {|i| i*i*i }

puts "------------------"

# or
# creating and sending a proc and recieving the proc as if it were a value
def iterator(arr, operation)
  index = 0
  while index < arr.length
    puts operation.call(arr[index])
    index += 1
  end
end

my_proc = Proc.new {|i| i*i*i}
iterator([1,2,3], my_proc)


### Creating a lambda.
def iterator arr, operation1, operation2
  index = 0
  while index < arr.length
    puts operation1.call(arr[index])
    puts operation2.call(arr[index])
    index += 1
  end
end

operation1 = lambda {|i| i*i }
operation2 = lambda {|i| i+i }
# or another way to create a lambda:
# operation2 = ->(i) { i+i }
iterator [1, 2, 3], operation1, operation2


### lambdas don't break out of the enclosing method!
# compare the above to what happens with this:
operation1 = Proc.new {|i| i*i }
operation1 = Proc.new {|i| i+i }

puts "testing procs within a method"
iterator [1, 2, 3], operation1, operation2
# see procs_vs_lambdas.rb for more on this
