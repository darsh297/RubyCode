#Author:Darshan


=begin
problem statement:
Find 3 minimum length words and 3 maximum length words from any given array of words.


expected output:
For example
Input - arr = [‘aaa’, ‘b’, [‘bb’, ‘cccc’], ‘d’, [‘e’, ‘ffff’]]
Output – Minimum – ‘b’, ‘d’, ‘e’
Maximum – ‘ffff’, ‘cccc’, ‘aaa’


=end




def find_min_max_length_words(words)
  # Sort the array by word length in ascending order to find the minimum length words
  min_length_words = words.sort_by(&:length).take(3)

  # Sort the array by word length in descending order to find the maximum length words
  max_length_words = words.sort_by(&:length).reverse.take(3)

  [min_length_words, max_length_words]
end

# Example usage
print "Enter words separated by spaces: "
user_input = gets.chomp

# Convert user input to an array of words
words = user_input.split(' ')

# Example usage
min_length_words, max_length_words = find_min_max_length_words(words)

puts "Minimum length words: #{min_length_words.join(', ')}"
puts "Maximum length words: #{max_length_words.join(', ')}"
