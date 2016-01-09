fs_cohort = ["Dong Wook Seo","Aaron Hu","Adam Pinsky","Akeem Street","Alex Forger","Andrew Kim","Baron Kwan","Brian Bier","Byron Gage","Carl Conroy","Charlie Bliss","Christopher Bunkers","Cody Kendall","Coline Forde","David Valencia","Emily Claire Bosakowski","Everett Golden","Hagai Zwick","Heather Conklin","Ian Wudarski","Ieronim Oltean","Jake Hamilton","James Boyd","Jasmeet Chatrath","Jenna El-Amin","Jerrie Evans","Joe Case","Jonathan Case","Jonathan Schwartz","Jonathan Silvestri","Kathryn Garbacz","Ian Kinner","Kyle Cierzan","Kyle Zelman","Andrew Larson","Linda Oanh Ho","Yiorgos Makridakis","Matt Harris","Matthew Baquerizo","Menuka Samaranayake","Michael Pintar","Mollie Stein","Lydia Nash","Aaron Opsahl","Peter Leong","Peter Stratoudakis","Prince Sadie","Ryan F. Salerno","Sanderfer Chau","Sarah Finken","Emmet Sussline","Sydney Rossman-Reich","Eric Tenza","Thomas Yancey","Tim Kelly","Timothy Beck","Tyler Doerschuk"]

=begin
def account_group(cohort)
  group_of_3 = cohort.sample(3)
  cohort -= group_of_3
  puts "Accountability Group(3 people): "
  group_of_3.each do |index|
    puts index
   end
 group_of_4 = cohort.sample(4)
  cohort -= group_of_4
  puts "Accountability Group(4 people): "
  group_of_4.each do |index|
    puts index
   end
until cohort.empty?
  group_of_5 = cohort.sample(5)
  cohort -= group_of_5
  puts "Accountability Group: "
  group_of_5.each do |index|
    puts index
   end
end
end
account_group(fs_cohort)
=end

=begin
Input: array of names
Output: arrays with differnt groups of people for accountability groups
Steps:
1. Take random values out of argument array
2. take argument array minus random values array
3. iterate over random values array
4. print index values
5. go back and evulate data to input loop
6. place UNTIL cohort is empty, continue subtracting agumented array
7. print random values array to console
8. run the same process above for group of 3 and 4  without LOOPS
=end
def account_group(cohort)
  group_of_3 = cohort.sample(3)
  cohort -= group_of_3
  puts "Accountability Group(3 people): "
  group_of_3.each do |index|
    puts index
   end
 group_of_4 = cohort.sample(4)
  cohort -= group_of_4
  puts "Accountability Group(4 people): "
  group_of_4.each do |index|
    puts index
   end
until cohort.empty?
  group_of_5 = cohort.sample(5)
  cohort -= group_of_5
  puts "Accountability Group: "
  group_of_5.each do |index|
    puts index
   end
end
end
account_group(fs_cohort)

=begin
What was the most interesting and most difficult part of this challenge? The most interesting was brain storming how I wanted to arrange the class data. The most difficult was using a loop to run through an array’s index.

Do you feel you are improving in your ability to write pseudocode and break the problem down? Somewhat, I am having a tough problem writing down physical steps in my pseudocode. I tend to use pen and paper to help me formulate a plan. It’s helpful for me to see written diagrams and flow charts when it comes to writing code.

Was your approach for automating this task a good solution? What could have made it even better? I would say my automation was okay. I could have made it better by having unique group numbers associated with each accountability group. I spend about 90 minutes trying to do that, so in the essence of time, I just moved on and will fight that battle later.

What data structure did you decide to store the accountability groups in and why? Arrays. I thought about doing hashes, but since it was only students, I thought arrays were more appropriate. If the accountability groups included Lucas and TAs, that would have probably been a hash.

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods? There are SO MANY enumerables! I think it’s pretty cool how enumerables make Ruby unique. I feel however, anytime I refactored and tried to implement new methods, I would just break my code. There are so many assignments due with DBC, I just don’t have the time to play around with it :(

=end