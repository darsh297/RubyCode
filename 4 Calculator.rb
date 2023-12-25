#Author:Darshan


=begin
Develop following program using OOPs concept:
Make a program for calculator using if else condition or switch case.

=end


# Define a method for the calculator
def calculator(operation, num1, num2)
  # Use a case statement to perform the corresponding operation
  case operation
  when '+'
    result = num1 + num2
  when '-'
    result = num1 - num2
  when '*'
    result = num1 * num2
  when '/'
    # Check if the divisor is not zero to avoid division by zero
    if num2 != 0
      result = num1 / num2.to_f  # Ensure the result is a float for accurate division
    else
      puts "Error: Cannot divide by zero."
      return
    end
  else
    puts "Invalid operation."
    return
  end

  # Print the result
  puts "Result: #{result}"
end

# Get user input
print "Enter the operation (+, -, *, /): "
operation = gets.chomp
print "Enter the first number: "
num1 = gets.to_f
print "Enter the second number: "
num2 = gets.to_f

# Perform the calculation
calculator(operation, num1, num2)
