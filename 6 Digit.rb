#Auther: Darshan


=begin
Find the lowest 3 digits and highest 3 digits from any given array of integers.
For example
Input - arr = [111, 555, [333, 222], 10, [11, 9, 7], 5, 1]
Output – Minimum – 1, 5, 7
 Maximum – 555, 333, 222



=end


def find_lowest_and_highest(arr)
  # Sort the array in ascending order to find the lowest 3 digits
  lowest_digits = arr.sort.take(3)

  # Sort the array in descending order to find the highest 3 digits
  highest_digits = arr.sort.reverse.take(3)

  [lowest_digits, highest_digits]
end

# Get user input for the array
print "Enter integers separated by commas (e.g., 1, 5, 3): "
user_input = gets.chomp

# Convert user input to an array of integers
arr = user_input.split(',').map(&:to_i)

# Example usage
lowest, highest = find_lowest_and_highest(arr)

puts "Minimum: #{lowest.join(', ')}"
puts "Maximum: #{highest.join(', ')}"
