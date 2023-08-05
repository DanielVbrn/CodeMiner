require "rspec"

class Calculator

  def self.sum(num1, num2)
    return num1 + num2
  end

  def self.sub(num1, num2)
    return num1 - num2
  end

  def self.multi(num1, num2)
    return num1 * num2
  end
end


# calculadora = Calculator.new
# puts("Resultado da soma: #{calculadora.sum(1, 2)}");

RSpec.describe "Calculator" do
  it "returns a test correct" do
    expect(Calculator.sum(2,2)).to eq(4)
  end

  it "returns a test correct" do
    expect(Calculator.multi(2,2)).to eq(4)
  end

  it "returns a test correct" do
    expect(Calculator.sub(2,2)).to eq(0)
  end
end


