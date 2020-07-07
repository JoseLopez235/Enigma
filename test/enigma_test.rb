require "test_helper.rb"
require_relative "../lib/enigma.rb"

describe Enigma do
  let(:enigma) {Enigma.new(03072020)}

  it "should exist" do
    expect(enigma).to be_kind_of(Enigma)
  end

  it "should be the whole alphabet with a space at the end" do
    expect(enigma.alphabet).to eq(["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "])
  end

  it "should return us a random 5 digit number with the first number being 0 every time" do
    enigma.create_key

    expect(enigma.key.to_s.length).to eq(4)
  end

  it "should return 2 sets of numbers per key" do
    enigma.create_key
    enigma.key_one
    enigma.key_two
    enigma.key_three
    enigma.key_four


    expect(enigma.key_a).to be_kind_of(Integer)
    expect(enigma.key_b).to be_kind_of(Integer)
    expect(enigma.key_c).to be_kind_of(Integer)
    expect(enigma.key_d).to be_kind_of(Integer)
  end

  it "should return 4 offsets" do
    enigma.offsets

    expect(enigma.offset_a).to eq(8)
    expect(enigma.offset_b).to eq(7)
    expect(enigma.offset_c).to eq(3)
    expect(enigma.offset_d).to eq(6)
  end

  it "should give final shift" do
    enigma.create_key
    enigma.key_one
    enigma.key_two
    enigma.key_three
    enigma.key_four
    enigma.offsets
    enigma.final_shift


    expect(enigma.shift_a).to be_kind_of(Integer)
    expect(enigma.shift_b).to be_kind_of(Integer)
    expect(enigma.shift_c).to be_kind_of(Integer)
    expect(enigma.shift_d).to be_kind_of(Integer)
  end
end
