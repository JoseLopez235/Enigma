require "test_helper.rb"
require_relative "../lib/enigma.rb"

describe Enigma do
  let(:enigma) {Enigma.new}

  it "should exist" do
    expect(enigma).to be_kind_of(Enigma)
  end

  it "should be the whole alphabet with a space at the end" do
    expect(enigma.alphabet).to eq(["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "])
  end
end
