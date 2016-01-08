# Research Methods

# I spent [] hours on this challenge.
=begin
i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 2, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end
=end
# Identify and describe the Ruby method(s) you implemented.
#
#
#
=begin
# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end
=end
# Identify and describe the Ruby method(s) you implemented.
#
#
#
i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 5, "Annabelle" => 0}

# Person 3
def my_array_sorting_method(i_want_pets)
  integer_array = []
  string_array = []
  new_array = i_want_pets.clone
  new_array.each do |array_value| if array_value.is_a? Integer
    integer_array.push(array_value)
  else
    string_array.push(array_value)
  end
  end
  integer_array.sort.concat(string_array.sort)
end

def my_hash_sorting_method(my_family_pets_ages)
  new_array = my_family_pets_ages.clone
  new_array.sort_by {|pet_name, pet_age| pet_age}
end
# Identify and describe the Ruby method you implemented
#   The method I used for the array had to take account that the array had integer and strings values in the array. When that happens you lose access to some array class methods like “.sort” because the values have to be all the same object class. So I started by creating an array for intergers and an array for strings, and a cloned array of the original in order to not make it destructive. I then iterated over the cloned array and if a value “is_a? Integer” I pushed it to the interger array, and else I pushed it to the string array. Then I needed to combine the two arrays, so I used “.concat” to merge them.
#   The hash sorting method was less complicated than the array. As in the array, I had to create a clone to make it non-destructive, I then took that array and used the enumerable method “.sort_by { |k,v| block }” and that gave me the correct answer.

# Teach your accountability group how to use the methods
#   I am little confused on this question; just call the method with a correct array or hash.

# Share any tricks you used to find and decipher the Ruby Docs
#   I first like to scan Ruby Docs and see if I can use a method. If I cannot find a method inside Ruby Docs, I then search the process in Google and look for what methods other people are using to help point me in the right direction. I then find a suitable method, I copy and paste it from Ruby docs into the code to make sure I am writing the correct syntax and I plug the data in.


=begin
# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#
=end