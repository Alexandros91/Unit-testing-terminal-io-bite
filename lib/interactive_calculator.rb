class InteractiveCalculator

  def initialize(name)
    @name = name
  end

  def run
    @name.puts "Hello, I will subtract two numbers."
    @name.puts "Please enter a number"
    number_1 = @name.gets.chomp
    @name.puts "Please enter another number"
    number_2 = @name.gets.chomp
    @name.puts "Here is your result:"
    @name.puts "#{number_1} - #{number_2} = #{number_1.to_i - number_2.to_i}"
  end
end



interactive_calculator = InteractiveCalculator.new(Kernel)
interactive_calculator.run

# Hello. I will subtract two numbers.
# Please enter a number
# 4
# Please enter another number
# 3
# Here is your result:
# 4 - 3 = 1

