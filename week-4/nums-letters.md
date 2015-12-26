#### What does puts do?
Puts adds a new line after each argument

#### What is an integer? What is a float?
An integer is are counting numbers, e.g. -4 -3 3 49 101. A float is a decimal number to include point zero numbers, e.g. -3.4 -2.0 4.3 55.323

#### What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
A float will bring back the value significant figures form. So if you puts 5.5 / 0.2, it should bring back 27.5. But if you ran it with integers, it would be 27. The answer rounds down from the 27.5 number.

The key difference between integer division and float division is that integer division is based off things that are not divisible like children or emails. Float division is best for academic purposes or audio/visual programs.

...
puts 24 * 365
puts (60 * 24) * ((365 * 10) + 2)
...

#### How does Ruby handle addition, subtraction, multiplication, and division of numbers?
Ruby handles calculations just as a calculator would, however the default calculation is set to integer values only.

#### What is the difference between integers and floats?
Floats are any numbers in ruby with a decimal in them such as 4.4 or 30.23 while integers are 4 or -23

#### What is the difference between integer and float division?
Integer division only gives integer results. So, 13/3 would be 4 because 3 can only go into 13, 4 times without breaking integer and adding a decimal. While if you did 13.0/3.0 Ruby would produce in 4.3 in float division.

#### What are strings? Why and when would you use them?
A string in Ruby is an object that hold and manipulates data, often in character form. We use them because any communication with users is usually done by the characters stored in Ruby strings.

#### What are local variables? Why and when would you use them?
Local variables are local to the code construct in which they are declared, which means they are not always assessable. If you declare a variable inside a method, the local variable cannot be assessed outside that specific method.

#### How was this challenge? Did you get a good review of some of the basics?
It was good and a nice refreshed to get warmed up. I dug a little deeper than I had to on a few challenges, but that’s they way you have to learn sometimes.

[Defining Variables](defining-variables.rb)
[Simple String Methods](simple-string.rb)
[Local Variables and Basic Arithmetical Operations](basic-math.rb)
