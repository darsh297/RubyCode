#Author : Darshan


=begin
Print all the keys whose values is nil.
h1 = {
a: 11, aa: {
b: 22, bb: {
c: nil, d: nil, ee: { e: 32, f: nil }
} } }

=end

# Given hash
h1 = {
  a: 11,
  aa: {
    b: 22,
    bb: {
      c: nil,
      d: nil,
      ee: { e: 32, f: nil }
    }
  }
}

# Define a method to print keys with nil values recursively
def print_keys_with_nil_value(hash, current_keys = [])
  hash.each do |key, value|
    if value.nil?
      puts "Key with nil value: #{(current_keys + [key]).join(' > ')}"
    elsif value.is_a?(Hash)
      print_keys_with_nil_value(value, current_keys + [key])
    end
  end
end

# Call the method to print keys with nil values
print_keys_with_nil_value(h1)
