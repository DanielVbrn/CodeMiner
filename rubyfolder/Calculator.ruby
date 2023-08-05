require "rspec"

class Calculator
  attr_reader :number;

  def sum(num1, num2)
    return num1 + num2;
  end
end


calculadora = Calculator.new
puts("Resultado da soma: #{calculadora.sum(1, 2)}");

RSpec.describe "Calculator" do
  subject { Calculator.sum(num1,num2)}
  describe ".sum()" do
    let(:number) { 0 }
    it "return" do
      subject.sum
      expect(subject.number).to eq(1)

    end
  end
end


