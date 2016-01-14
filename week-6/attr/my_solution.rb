#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input: name into instance method
# Output: name with greeting method
# Steps:
=begin
DEFINE initialize name in Class NameData
RETURN instance variable for name and string

DEFINE initialize method for Greeetings
Return instance variable assignement to New NameData class

Add attribute reader to instnace variable 'name' in NameData class

add name method to Greetings initialaize method

DEFINE hello method
returns saluation string combined with interpolrazation from greetings initialize method

test code

create new Greetings class
run instance variable hello on new greeting class

=end

class NameData

attr_reader :name

def initialize
  @name = 'Ty'
end

end

class Greetings

def initialize
  @student = NameData.new.name
end

def hello
  puts "Welcome, #{@student}"
end

end

greet = Greetings.new
greet.hello

# Reflection
=begin
Release 1
What are these methods doing?
The methods are creating instance variables for name, age, and occupation.

How are they modifying or returning the value of instance variables?
By creating another instance method with a different parameter. Release 1 uses method name ‘def method_name=(new_parameter)’. The equal sign is part of the method parameter, so to pass an argument it would be ‘class_variable.new_parameter = object.

Release 2
What changed between the last release and this release?
The attr_reader attribute was added to the code for age.

What was replaced?
The attr_reader attribute replaces the instance method def what_is_age.

Is this code simpler than the last?
Yes, the attr attribute clean and simplifies the code.

Release 3
What changed between the last release and this release?
In addition to attr_reader, the attribute attr_writer was added.

What was replaced?
The change my age method was replaced by the attr_writer attribute.

Is this code simpler than the last?
Yes.

Release 6
What is a reader method?
A reader method returns only the value.

What is a writer method?
A writer method actually changes the object.

What do the attr methods do for you?
The ‘attr_reader’, means when called it will read back the associate instance variable located in a method The syntax ’attr_writer’, means instead of return the instance variable, like ‘attr_reader’, the writer method actually changes the object. And finally, the ‘attr_accessor’ does both.

Should you always use an accessor to cover your bases? Why or why not?
It could lead to difficulty debugging problems and there are security compromises.

What is confusing to you about these methods?
When the attr methods stay in one variable I can easily follow, interpret, and write code. However, when data is exchanged between different classes, I find it difficult to follow the code. Time and practice should fix this problem.

=end