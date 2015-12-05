# Leap Years

# I worked on this challenge with:Tyler McKenzie.


# Your Solution Below
def leap_year?(year)
  
  unless (year%4 == 0 && year%400 == 0) || (year%100 != 0 && year%4 == 0)
  false
 else
  true
 end
end