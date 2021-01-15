require './caesar-cipher.rb'

describe '#ask_string' do
  before do
    $stdin = StringIO.new("Niels")
  end

  after do
    $stdin = STDIN
  end

  it "returns the name split into an array" do
    expect(ask_string).to eql(["N","i","e","l","s"])
  end

end

describe "#ask_shift_factor" do

  before do
    $stdin = StringIO.new("3")
  end

  after do
    $stdin = STDIN
  end

  it "returns the string number as an integer" do
    expect(ask_shift_factor).to eql(3)
  end
end

describe "#modulo_shift_factor" do
  it "reduces the entered shift factor to a number between -27 and 27" do
    expect(modulo_shift_factor(467)).to eql(25)
  end
end

describe "#encrypt" do
  context "shift factor is 1" do
    it "encrypts a string correctly" do
      expect(encrypt(["N","i","e","l","s"], 1)).to eql("Ojfmt")
    end
  end

  context "shift factor is more than 26" do
    it "encrypts a string correctly" do
      expect(encrypt(["N","i","e","l","s"], 27)).to eql("Ojfmt")
    end
  end

  context "shift factor is negative" do
    it "encrypts a string correctly" do
      expect(encrypt(["N","i","e","l","s"], -1)).to eql("Mhdkr")
    end
  end

  context "shift factor is less than -26" do
    it "encrypts a string correctly" do
      expect(encrypt(["N","i","e","l","s"], -53)).to eql("Mhdkr")
    end
  end

  context "shift factor causes converted letters to surpass the z or Z" do
    it "encrypts a string correctly" do
      expect(encrypt(["N","i","e","l","s"], 14)).to eql("Bwszg")
    end
  end

  context "string contains punctuation" do
    it "encrypts a string correctly" do
      expect(encrypt(["N","i","e","l","s",".","?", "!"], -53)).to eql("Mhdkr.?!")
    end
  end

  context "string" do
    it "encrypts a string correctly" do
      expect(encrypt(["N","i","e","l","s"], -53)).to eql("Mhdkr")
    end
  end
end