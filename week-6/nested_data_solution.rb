
# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
#p array[0]
#p array[1]
#p array[1][1]
#p array[1][1][2]
#p array[1][1][2][0]



# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
#p hash[:outer]
#p hash[:outer][:inner][3]
#p hash[:outer][:inner]
#p hash[:outer][:inner]["almost"]
#p hash[:outer][:inner]["almost"][3]
# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
#p nested_data[:array]
#p nested_data[:array][1]
#p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES
#destructive
#a = [ "a", "b", "c", "d" ]
#a.map! {|x| x + "!" }
#a #=>  [ "a!", "b!", "c!", "d!" ]
number_array = [5, [10, 15], [20,25,30], 35]

# Initial Solution
=begin
number_array.each do |element|
  #p element
  if element.kind_of?(Array)
    element.map! {|inner| inner  += 5}
  else element.kind_of?(Integer)
    number_array[number_array.index(element)] += 5
  end
end
=end

# Refactored solution
number_array.map! do |element|
  if element.kind_of?(Array)
    element.map! {|inner| inner  += 5}
  else
    element += 5
  end
end


#p number_array
# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

def name_gen(name_array)
  name_array.map! do |chunk|
    if chunk.kind_of?(Array)
      name_gen(chunk)
    else
      chunk += "ly"
    end
  end
  return name_array
end

p name_gen(startup_names)
=begin
Reflection
What are some general rules you can apply to nested arrays?
What are some ways you can iterate over nested arrays?
Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
=end