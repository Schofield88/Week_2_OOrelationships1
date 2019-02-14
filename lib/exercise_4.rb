class ScrambledDiary
  def initialize(contents)
    @contents = contents
  end

  def read
    puts @contents
  end

  def rejigger(crypt)
    crypt.do_your_thing(@contents)
  end

end


class Scramble_by_advancing_chars

  def initialize(steps)
    @steps = steps
  end

  def do_your_thing(contents_from_scram)
    plain_chars = contents_from_scram.chars
    scrambled_chars = plain_chars.map do |char|
      (char.ord + @steps).chr
    end
    contents_from_scram = scrambled_chars.join
    puts contents_from_scram
  end

end

class Unscramble_by_advancing_chars

  def initialize(steps)
    @steps = steps
  end

  def do_your_thing(contents_from_scram)
    scrambled_chars = contents_from_scram.chars
    plain_chars = scrambled_chars.map do |char|
      (char.ord - @steps).chr
    end
    contents_from_scram = plain_chars.join
    puts contents_from_scram
  end

end

class Reverse

  def do_your_thing(contents_from_scram)
    puts contents_from_scram.reverse
  end

end

diary1 = ScrambledDiary.new("This is a load of content.")
diary1.rejigger(Reverse.new)
diary2 = ScrambledDiary.new("This is a load of content.")
diary2.rejigger(Scramble_by_advancing_chars.new(10))
diary3 = ScrambledDiary.new("^rs}*s}*k*vykn*yp*myx~ox~8")
diary3.rejigger(Unscramble_by_advancing_chars.new(10))
