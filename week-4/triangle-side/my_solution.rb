# I worked on this challenge [with: Jenna El-Amin ].


# Your Solution Below

def valid_triangle?(a, b, c)
  if ((a + b) > c) && ((b + c) > a) && ((a + c) > b)
    return true
  end
end
