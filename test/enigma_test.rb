require "test_helper.rb"
require_relative "../lib/enigma.rb"

describe Enigma do
  let(:enigma) {Enigma.new}

  it "should exist" do
    expect(enigma).to be_kind_of(Enigma)
  end
end
