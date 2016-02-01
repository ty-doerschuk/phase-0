# Cipher Challenge

# I worked on this challenge [by myself, with:]
# I spent [#] hours on this challenge.

# 1. Solution
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.

def dr_evils_cipher(coded_message)
  input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the Ruby docs.
  decoded_sentence = []
  cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
            "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
# Hashes are probably the best for this because you want a key and a direct value because you need to diciper string code. I don't see how an array you be much help because it would be a list of values with no reference point.
            "g" => "c",
            "h" => "d",
            "i" => "e",
            "j" => "f",
            "k" => "g",
            "l" => "h",
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z"}

  input.each do |x| # What is #each doing here?
    # each is iterating through the each variable listed about which has been downcased and split into one array
    found_match = false  # Why would this be assigned to false from the outset? What happens when it's true?
    # Since nothing has been diciped yet, it has to be false because there is nothing ciphered. Not until there is a correct match should this change. If it's set to true, it assumes that everything is a correct cipher match.
    cipher.each_key do |y| # What is #each_key doing here?
      # .each_key is iterating through each key in the cipher hash
      if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really?
        # if the input variable has any match on the cipher hash. X is coming from method argument, which has is a string thats been downcased and split into one array. Y is coming from the cipher hash key. So is x is values from an array, and y are keys from a hash.
        decoded_sentence << cipher[y]
        found_match = true
        break  # Why is it breaking here?
        # Because the if statement needs to break out of an internal loop. The code would just keep putting ciper[y] into the decoced_sentence and we would lose our cipher.
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing?
        # the 'elsif' is checking for special characters, which are just tranlated to spaces
        decoded_sentence << " "
        found_match = true
        break
      elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do?
        # This puts 0 though 9 integers into an array. This is confusing because the iteration is check for sting characters, not integers.
        decoded_sentence << x
        found_match = true
        break
      end
    end
    if not found_match  # What is this looking for?
      # Checking that if there is nothing to cipher, the original string value is returned.
      decoded_sentence << x
    end
  end
  decoded_sentence = decoded_sentence.join("")
  #What is this method returning?
  # The method returns decoded sentence and to make it better for the user, the join method has been used to make it look nice.
end

# Your Refactored Solution

def cipher
  alphabet = ('a'..'z').to_a
  cipher_KV = alphabet.map do |l|
    [l, (alphabet[alphabet.index(l) - 4])]
  end
  cipher_alphabet_hash = Hash[cipher_KV]
end

def dr_evils_cipher(coded_message)
  input = coded_message.downcase.split("")
  decoded_sentence = []
  input.each do |coded_letter|
    found_match = false
    cipher.each_key do |cipher_letter|
      if coded_letter == cipher_letter
        decoded_sentence << cipher[cipher_letter]
        found_match = true
        break
      elsif coded_letter == "@" || coded_letter == "#" || coded_letter == "$" || coded_letter == "%"|| coded_letter == "^" || coded_letter == "&"|| coded_letter == "*"
        decoded_sentence << " "
        found_match = true
        break
      end
    end
    if found_match == false
      decoded_sentence << coded_letter
    end
  end
  decoded_sentence = decoded_sentence.join("")
end




# Driver Test Code:
p dr_evils_cipher("m^aerx%e&gsoi!") # == "i want a coke!" #This is driver test code and should print true
# Find out what Dr. Evil is saying below and turn it into driver test code as well. Driver test code statements should always return "true."
p dr_evils_cipher("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
&fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l")
p dr_evils_cipher("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.")
p dr_evils_cipher("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
@m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.")
p dr_evils_cipher("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?")

# Reflection
# Keep your reflection limited to 10-15 minutes!


# What concepts did you review or learn in this challenge?
# Iterating through an array and hash and a how to write a simple algorithm.

# What is still confusing to you about Ruby?
# Some of the naissances in control flow. There seems to always a little thing in control flow I didn’t know was possible or not possible with each Ruby exercise.

# What are you going to study to get more prepared for Phase 1?
# Control flow.
