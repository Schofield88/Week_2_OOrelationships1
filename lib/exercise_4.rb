class ScrambledDiary
  def initialize(contents)
    @contents = contents
  end

  def read
    @contents
  end



  def scramble_by_advancing_chars(steps)
    plain_chars = @contents.chars
    scrambled_chars = plain_chars.map do |char|
      (char.ord + steps).chr
    end
    @contents = scrambled_chars.join
  end

  def unscramble_by_advancing_chars(steps)
    scrambled_chars = @contents.chars
    plain_chars = scrambled_chars.map do |char|
      (char.ord - steps).chr
    end
    @contents = plain_chars.join
  end



end

##############################################

class scramble_by_advance

  def stuff1
    (char.ord + steps).chr
  end

end

class unscramble_by_advance

  def stuff1
    (char.ord - steps).chr
  end

end

class reverse

  def stuff1
  @contents = @contents.reverse
  end

end
