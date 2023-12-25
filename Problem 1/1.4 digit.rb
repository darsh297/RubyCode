#Autor: Darshan
=begin

4.Make a digit triangle
1 2 3 4 5
1 2 3 4
1 2 3
1 2
1

=end

# Set the number of rows for the triangle
rows = 5

# Outer loop: iterate from the specified number of rows to 1
rows.downto(1) do |i|
  # Inner loop: iterate from 1 to the current value of the outer loop variable
  1.upto(i) do |j|
    # Print the current digit followed by a space
    print "#{j} "
  end

  # Move to the next line after each row
  puts
end
