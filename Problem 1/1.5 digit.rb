#Author:Darshan
=begin
Problem Statment

5.Make a digit triangle
5 4 3 2 1
5 4 3 2
5 4 3
5 4
5
Note: Rows must be dynamic. Take user input.




=end


# Get user input for the number of rows
print "Enter the number of rows: "
rows = gets.chomp.to_i

# Validate input to ensure it's a positive integer
if rows <= 0
  puts "Please enter a positive integer for the number of rows."
else
  # Outer loop: iterate from the specified number of rows to 1
  rows.downto(1) do |i|
    # Inner loop: iterate from 1 to the specified number of columns (equal to the current row)
    1.upto(i) do |j|
      # Print the current digit followed by a space
      print "#{j} "
    end

    # Move to the next line after each row
    puts
  end
end
