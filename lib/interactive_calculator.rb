class InteractiveCalculator

  def initialize(name)
    @name = name
  end

  def run
    @name.puts "Hello, I will subtract two numbers."
    @name.puts "Please enter a number"
    number_1 = get_number
    @name.puts "Please enter another number"
    number_2 = get_number
    @name.puts "Here is your result:"
    @name.puts sum_format(number_1, number_2)
  end

  private

  def get_number
    response = @name.gets
    return response.to_i if response.to_i.to_s == response
    fail "You must enter a number"
  end

  def sum_format(num1, num2)
    result = num1 - num2
    "#{num1} - #{num2} = #{result}"
  end
end










# interactive_calculator = InteractiveCalculator.new(Kernel)
# interactive_calculator.run


