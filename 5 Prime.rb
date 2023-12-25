#Authername: Darshan
=begin

problem statement :


Develop following program using OOPs concept:
Make a program to generate prime number/s series. Get input from user (do not include prime library)
If user will enter number 18, following will print:
2, 3, 5, 7, 11, 13, 17



=end




class PrimeGenerator
  def initialize(limit)
    @limit = limit.to_i
  end

  def generate_primes
    primes = []
    (2..@limit).each do |num|
      primes << num if is_prime?(num)
    end
    primes
  end

  def is_prime?(num)
    (2..Math.sqrt(num)).none? { |i| (num % i).zero? }
  end
end

# Get user input
print "Enter a number: "
user_input = gets.chomp

# Create an instance of PrimeGenerator
prime_generator = PrimeGenerator.new(user_input)

# Generate and display the prime numbers
result = prime_generator.generate_primes
puts "Prime numbers up to #{user_input}: #{result.join(', ')}"
