class Enigma
  attr_reader :alphabet, :key, :key_a, :key_b, :key_c, :key_d
  def initialize
    @alphabet = ("a".."z").to_a << " "
    @key = nil
    @key_a = nil
    @key_b = nil
    @key_c = nil
    @key_d = nil
  end

  def create_key
    @key = rand(1000..9999).to_s
  end

  def key_one
    @key_a = @key[0].to_i
  end

  def key_two
    x =[]
    x << @key[0]
    x << @key[1]
    @key_b = x.join.to_i
  end

  def key_three
    x =[]
    x << @key[1]
    x << @key[2]
    @key_c = x.join.to_i
  end

  def key_four
    x =[]
    x << @key[2]
    x << @key[3]
    @key_d = x.join.to_i
  end
end
