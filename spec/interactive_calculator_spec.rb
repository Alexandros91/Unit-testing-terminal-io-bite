require 'interactive_calculator'

RSpec.describe InteractiveCalculator do
  it 'asks for two numbers and gives a result' do
    user = double :user
    expect(user).to receive(:puts).with("Hello, I will subtract two numbers.").ordered
    expect(user).to receive(:puts).with("Please enter a number").ordered
    expect(user).to receive(:gets).and_return("10").ordered
    expect(user).to receive(:puts).with("Please enter another number").ordered
    expect(user).to receive(:gets).and_return("5").ordered
    expect(user).to receive(:puts).with("Here is your result:").ordered
    expect(user).to receive(:puts).with("10 - 5 = 5").ordered
    interactive_calculator = InteractiveCalculator.new(user)
    interactive_calculator.run
  end

  context 'if the first response is a string' do
    it 'fails' do
      user = double :user
      expect(user).to receive(:puts).with("Hello, I will subtract two numbers.").ordered
      expect(user).to receive(:puts).with("Please enter a number").ordered
      expect(user).to receive(:gets).and_return("alex").ordered
      interactive_calculator = InteractiveCalculator.new(user)
      expect { interactive_calculator.run }.to raise_error "You must enter a number"
    end
  end

  context 'if the second response is a string' do
    it 'fails' do
      user = double :user
      expect(user).to receive(:puts).with("Hello, I will subtract two numbers.").ordered
      expect(user).to receive(:puts).with("Please enter a number").ordered
      expect(user).to receive(:gets).and_return("10").ordered
      expect(user).to receive(:puts).with("Please enter another number").ordered
      expect(user).to receive(:gets).and_return("alex").ordered
      interactive_calculator = InteractiveCalculator.new(user)
      expect { interactive_calculator.run }.to raise_error "You must enter a number"
    end
  end
end

