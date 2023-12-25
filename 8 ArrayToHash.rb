#Author : Darshan
=begin
Make a hash using these two given arrays where arr1 will be the key and arr2 will be the value. For key
there is no value use nil as value.
arr1 = [‘aaa’, ‘bbb’, ‘ccc’, ‘ddd’, ‘eee’]
arr2 = [111, 222, 333]

expectd output:
Output: { ‘aaa’ => 111, ‘bbb’ => 222, ‘ccc’ => 333, ‘ddd’ => nil, ‘eee’ => nil}




=end



arr1 = ['aaa', 'bbb', 'ccc', 'ddd', 'eee']
arr2 = [111, 222, 333]

# Create a hash using arr1 as keys and arr2 as values, with nil as default value
result_hash = Hash.new(nil)
arr1.each_with_index { |key, index| result_hash[key] = arr2[index] }

# Display the resulting hash
puts result_hash
