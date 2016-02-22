# Code Reading
# new comment
# Add a comment (a line starting with # ) before each line explaining what it does. 
# Add a comment before the method name explaining, in plain english, what the method does. 
# Try copying and pasting this into a ruby file and modifying it to help you figure it out. 
# Try adding "puts" lines in at different places to see what happens.



# method that prints the numbers from 1 to limit.
# But for multiples of three prints 'Fizz' instead of the number
# and for the multiples of five prints Buzz. 
# For numbers which are multiples of both three and five it prints FizzBuzz


                    # method name with one parameter
def fizzbuzz(num)
                    # case is a structure used to test a sequence of conditions 
    case
                    # checks if a number is evenly divisible by 15
      when num % 15 == 0 then "FizzBuzz"
                    # checks if a number is evenly divisible by 3
      when num % 3  == 0 then "Fizz"
                    # checks if a number is evenly divisible by 5
      when num % 5  == 0 then "Buzz"
                    # if none if the above are true then the number is printed
      else num
                    # end of case
    end
                    # end of method
end

                    # passes argumrnts (integers) to 'fizzbuzz' and prints the results
def fizz_buzz_to(limit)

                    # generates numbers from 1 to highest integer to be checked, and sends each number to 'fizzbuzz'
  1.upto(limit).each do |num|

                    # prints the results of all the numbers passed into the method 
    puts fizzbuzz(num)   

                    # end of method
  end
                    # end of method    
end
                    # Note: This line added to prevent an infinite loop

limit = fizz_buzz_to(50)


###################################

# Fix Broken Code

# The following code contains some errors and some coding ettiquette issues.
# Fix and refactor the code so that it works and is more clear.

def area_of_triangle(base, height)
  return base * height / 2
end

base = 7
height = 6

puts area_of_triangle(base, height)


###################################

# Coding

# 1.  Create a class called "Waitlist"
# o Add a method called "add_party" that takes a string (representing the name of the party) as a parameter
#   and adds the name to an array called list,
#   this method should return the name of the recently added party
# o Add a method called "list" that displays the list array of all of the parties that are currently waiting for a table
#   in the order in which they were added 
#   (i.e. the name listed first represents the first party in the list, second represents the second party and so on...)
# o Add a method called "seat" that removes the first string (representing the party) from the list array, 
#   this method should return the newly updated list (with the name of the recently seated party removed)
# o Make sure you create a new instance of the Waitlist class and call each method
# o Use puts to print the results of each method in the console


class Waitlist
  def initialize
    # creates an array
    @list = ["First", "Second", "Third", "Fourth", "Fifth"]
  end

# Adds a name to the array
  def add_party(name)
    puts name
    @list << name
  end

#Lists the names that are waiting

  def list
    @list.map{|e| puts "#{e}"}
      end

  def seat
    @list.delete_at(0)
  end

end

# To use the Waitlist:

waitlist = Waitlist.new
puts "This is the current list"
waitlist.list
puts "This is the added name"
waitlist.add_party('Sixth')
puts "This is the new complete list"
waitlist.list
waitlist.seat
puts "This is the revised list"
waitlist.list
