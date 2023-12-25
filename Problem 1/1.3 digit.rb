#Author: Darshan


=begin
3. Make a digit triangle
1
1 2
1 2 3
1 2 3 4
1 2 3 4 5


=end


def digit_triangle(rows)
    (1..rows).each do |row|
      (1..row).each do |digit|
        print "#{digit} "
      end
      puts
    end
  end


  digit_triangle(5)
