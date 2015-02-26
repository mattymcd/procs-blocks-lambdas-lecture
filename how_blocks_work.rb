
##Blocks are blocks of code, kind of like a method without a name

# def do_block
#   yield
# end

# do_block() { puts "i'm a puts statement!"}

# # do_block

# [1,2,3].each { |number| puts "i'm a puts statement!"}

# # puts "-"*50

# do_block do
#   puts "this is a multi-line block"
#   puts "i'm a multi-line puts statement!"
# end

# puts "-"*50

# how can we have variables sent into a block?
def do_block(pants = "generic block")
  yield(pants) if block_given?
end

do_block("puts statement") { |block_name| puts "i'm a #{block_name}"}
# do_block("puts statement")
# do_block do |block_name|
#     puts "i'm a #{block_name}"
#     name = "bob"
# end


# do_block { |block_name| puts "i'm a #{block_name}"}

# if we think of a block as a method with no name:
#  { |block_name| puts "i'm a #{block_name}"}
#
#  def (block_name)
#    puts "i'm a #{block_name}"
#  end
#
