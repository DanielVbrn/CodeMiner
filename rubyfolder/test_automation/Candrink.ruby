require "rspec"

class CanDrink

  def initialize(age)
    @age = age
  end

  def can_drink?
    @age >= 18
  end
end


RSpec.describe "CanDrink" do
  subject { CanDrink.new(age) }
  describe ".can_drink?" do
    let (:age) { 19 }
    it "returns true" do
      expect(subject.can_drink?).to eq(true)
    end
    let (:age) { 17 }
    it "returns false" do
      expect(subject.can_drink?).to eq(false)
    end
    let (:age) { 18 }
    it "returns true" do
      expect(subject.can_drink?).to eq(true)
    end
  end
end
