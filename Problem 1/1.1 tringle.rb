#Author: Darshan
=begin

1. Make a * triangle
*
* *
* * *
* * * *
* * * * *


=end

def print_triangle(rows)  #rows pass as a argument.
    (1..rows).each do |i| #for row.
      (1..i).each do      #for column.
        print ' * '       #perform printing operation.

      end
      puts
    end
  end

  print_triangle(5)       #pass 5 as value.
