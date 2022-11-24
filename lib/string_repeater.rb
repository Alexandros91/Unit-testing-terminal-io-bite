class StringRepeater

  def initialize(terminal)
    @terminal = terminal
  end

  def run
    @terminal.puts "Hello. I will repeat a string many times."
    @terminal.puts "Please enter a string"
    string = @terminal.gets.chomp
    @terminal.puts "Please enter a number of repeats"
    times_repeated = @terminal.gets.to_i
    @terminal.puts "Here is your result:"
    @terminal.puts "#{string}" * times_repeated
  end

end



# string_repeater = StringRepeater.new(Kernel)
# string_repeater.run

# Hello. I will repeat a string many times.
# Please enter a string
# TWIX
# Please enter a number of repeats
# 10
# Here is your result:
# TWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIX