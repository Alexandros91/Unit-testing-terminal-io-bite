require 'string_repeater'

RSpec.describe StringRepeater do
  it 'asks for a string and a number and returns the string the given number of times' do
    terminal = double :terminal
    expect(terminal).to receive(:puts).with("Hello. I will repeat a string many times.").ordered
    expect(terminal).to receive(:puts).with("Please enter a string").ordered
    expect(terminal).to receive(:gets).and_return("TWIX").ordered
    expect(terminal).to receive(:puts).with("Please enter a number of repeats").ordered
    expect(terminal).to receive(:gets).and_return("10").ordered
    expect(terminal).to receive(:puts).with("Here is your result:").ordered
    expect(terminal).to receive(:puts).with("TWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIX").ordered
    string_repeater = StringRepeater.new(terminal)
    string_repeater.run
  end

  context 'if we pass a striong instead of a number' do
    it 'fails' do
      terminal = double :terminal
      expect(terminal).to receive(:puts).with("Hello. I will repeat a string many times.").ordered
      expect(terminal).to receive(:puts).with("Please enter a string").ordered
      expect(terminal).to receive(:gets).and_return("TWIX").ordered
      expect(terminal).to receive(:puts).with("Please enter a number of repeats").ordered
      expect(terminal).to receive(:gets).and_return("Hello").ordered
      string_repeater = StringRepeater.new(terminal)
      expect { string_repeater.run }.to raise_error "You must enter a number"
    end
  end
end
