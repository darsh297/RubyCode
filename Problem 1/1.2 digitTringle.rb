def print_digit_triangle(rows)
    current_number = 1

    (1..rows).each do |i|
      (1..i).each do
        print "#{current_number} "
        current_number += 1
      end
      puts
    end
  end

  print_digit_triangle(5)
