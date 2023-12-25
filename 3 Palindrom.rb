#Auther:Darshan

=begin

Defination:Program 3
Develop following program using OOPs concept:
Check string if it is palindrome string or not. Take string from user. If string is palindrome, print the string
=end



class PalindromeChecker
  def initialize(input_string)
    @input_string = input_string.downcase
  end

  def palindrome?
    @input_string == @input_string.reverse
  end

  def display_result
    if palindrome?
      puts "The string is a palindrome: #{@input_string}"
    else
      puts "The string is not a palindrome."
    end
  end
end

# Get user input
print "Enter a string: "
user_input = gets.chomp

# Create an instance of PalindromeChecker
checker = PalindromeChecker.new(user_input)

# Check and display the result
checker.display_result
