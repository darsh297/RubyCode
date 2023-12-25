#Auther : Darshan Chudasama


=begin

Defination:
Develop following program using OOPs concept:
Take hour/s, minute/s and second/s from user. Print in this format - HH:MM:SS AM/PM
Convert 24 hours format to 12 hours format if user is inputting into 24 hours format
User input:
Hours: 18
Minutes: 5
Seconds: 59
Output must be: 06:05:59 PM

=end




class TimeConverter
    def initialize(hours, minutes, seconds)
      @hours = hours.to_i
      @minutes = minutes.to_i
      @seconds = seconds.to_i
    end

    def convert_to_12_hour_format
      am_pm = @hours < 12 ? "AM" : "PM"
      @hours = @hours % 12
      @hours = 12 if @hours == 0

      format("%02d:%02d:%02d %s", @hours, @minutes, @seconds, am_pm)
    end
  end

  # Get user input
  print "Hours: "
  hours = gets.chomp
  print "Minutes: "
  minutes = gets.chomp
  print "Seconds: "
  seconds = gets.chomp

  # Create an instance of TimeConverter
  converter = TimeConverter.new(hours, minutes, seconds)

  # Convert and display the result
  puts "Output must be: #{converter.convert_to_12_hour_format}"
