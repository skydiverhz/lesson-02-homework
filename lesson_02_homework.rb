# Code Reading

def fizzbuzz(num)
  # Example comment line

  case
    when num % 15 == 0 then "FizzBuzz"
    when num % 3  == 0 then "Fizz"
    when num % 5  == 0 then "Buzz"
    else num
  end
end

def fizz_buzz_to(limit)
  1.upto(limit).each do |num|
    puts fizzbuzz(num)
  end
end

# Fix Broken Code

def area_of_triangle(b, h)
  puts b x height / 2
end

base = 7
height = 6

puts area_of_triangle(height, height)

# Coding

class Waitlist
  # add your code here
end
