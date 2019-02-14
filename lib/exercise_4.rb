class ScrambledDiary
  def initialize(:contents)
    @contents = contents
  end

  def read
    @contents
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
    plain_chars = contents_from_scram
    scrambled_chars = plain_chars.map do |char|
      (char.ord + @steps).chr
    end
    contents_from_scram = scrambled_chars.join
  end

end

class Reverse

  def do_your_thing(contents_from_scram)
    contents_from_scram.reverse
  end
      
end
