=begin
class Groccery
  attr_reader :list
  def initialize({'apple' => 3})
    @list = {'apple' => 3}
  end

  def add_item('milk', 3)
    @list['milk'] = 3
  end
  #@list = {'apple' => 3, 'milk' => 2}
end

my_list = Groccery.new({'apple' => 3})

my_list.add_item('milk', 2)

p my_list.list
=end

# Method to create a list
# # input: input of individual strings(grocery list) into a hash
# # steps:
# define method list with argument (string)
# seperate into individual strings and put into an array
# create a new empty hash
# put array values as hash keys into new hash
# assign a default value of 1 for all keys in the new hash
# output: printed hash with all keys from string input and all having the default value of one

#=> ["bananas","milk"]

def create_list(string)
  list_array = string.split
  list_hash = Hash.new
  list_array.each {|new_key| list_hash.store(new_key, 1) }
  return list_hash
end

# # Method to add an item to a list
# # input: def list, item & its quanity
# # steps: assign vraible for list (from previous method)
# add the argurment [item] to key and argument [quanity] to its value
# # output: updated hash of items with new items and quanity

# http://ruby-doc.org/core-2.3.0/Hash.html#method-i-merge-21
# h1 = { "a" => 100, "b" => 200 }
# h2 = { "b" => 254, "c" => 300 }
# h1.merge!(h2)   #=> {"a"=>100, "b"=>254, "c"=>300}

def add_item(master_list, item, quantity = 1)
  master_list.merge!({item => quantity})
  return master_list
end
# http://ruby-doc.org/core-2.3.0/Hash.html#method-i-reject-21

# # Method to remove an item from the list
# # input: remove item from hash
# # steps: create a new method def remove_item
# #       use method to subtract hash item
# # output: modified hash with removed item
# reject! {| key, value | block } → hsh or nil

def remove_item(master_list, item)
  master_list.reject!{|key, value| key == item}
  return master_list
end
# # Method to update the quantity of an item
# # input: item quantity
# # steps: define the method
# # call the hash
# # use the right method to updat quantity ( the value )
# # output: modife hash with new value for a spesific key

def update_quantity(master_list, item, quantity)
  master_list.merge!(item => quantity)
  return master_list
end

# # Method to print a list and make it look pretty
# # input: print the list
# # steps: call list
# # output: print list
# output.each do |key, value|
#     puts key + ' : ' + value
# end

def print_list(master_list)
  master_list.each do |key, value|
    puts key.to_s.capitalize + ": " + value.to_s
  end
end

working_hash = create_list("lemonade tomatoes onions ice-cream")
remove_item_hash = add_item(working_hash, "milk", 2)
update_quantity_hash = remove_item(remove_item_hash, "lemonade")
print_list_hash = update_quantity(update_quantity_hash, "ice-cream", 1)
print_list(print_list_hash)


=begin
What did you learn about pseudocode from working on this challenge?
It’s vital to any creating any Ruby code you are not comfortable working with. PC is wonderful for keeping you on track and on what you are trying to do.

What are the tradeoffs of using Arrays and Hashes for this challenge?
I think arrays are a little easier to create and use elementary methods. While I think, hashes are a little more difficult to use but have much more flexibility with methods and manipulation.

What does a method return?
The method returns the last expression that was evaluated in the body of the method.

What kind of things can you pass into methods as arguments?
I believe any object can be passed as an argument to a method.

How can you pass information between methods?
For this lesson, it was assigning a variable to a previous method with arguments and then calling the variable as argument in another method. Outside of this lesion it would be classes.

What concepts were solidified in this challenge, and what concepts are still confusing? Method arguments. I didn’t know you could pass information from other methods as an argument until I did this challenge.

=end