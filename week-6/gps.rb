# Your Names
# 1)Sanderfer
# 2)Tyler

# We spent [1.25] hours on this challenge.

def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  raise ArgumentError.new("#{item_to_make} is not a valid input") unless library[item_to_make]

  serving_size = library[item_to_make]
  remaining_ingredients = num_of_ingredients % serving_size

  not_exact_ingredients = "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items:"

  case remaining_ingredients
      when 0
        return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
      when 1 #left over ingredient
        return not_exact_ingredients + " 1 cookie"
      when 2  #left over ingredients
        return not_exact_ingredients + " 2 cookies"
      when 3  #left over ingredients
        return not_exact_ingredients + " 3 cookies"
      when 4  #left over ingredients
        return not_exact_ingredients + " 4 cookies"
      when 5  #left over ingredients
        return not_exact_ingredients + " 1 cake"
      end
end

# p serving_size_calc("pie", 7)
 p serving_size_calc("pie", 8)
# p serving_size_calc("cake", 5)
# p serving_size_calc("cake", 7)
# p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection
=begin
What did you learn about making code readable by working on this challenge?
The best code to read in Ruby almost flows as if you’re speaking English. When you refactor and you can go through explaining your code in simple terms, it’s probably good code.

Did you learn any new methods? What did you learn about them?
I learned .values_at method. This was used in the original code. This method would be useful when you have a large hash and you want to find what keys have a certain value. For this we only need to fine a specific key and value, so it was overkill. But still a good nice method to use in the future.

What did you learn about accessing data in hashes?
They are a little imitating compared to arrays, however once you get over that hump, they’re very flexiable. Since their value can be any object, they can do many different things which lead to more possibility of what the code can do.

What concepts were solidified when working through this challenge?
What bad code looks like haha. I know how to easily call any hash value now.
=end