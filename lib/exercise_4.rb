class ScrambledDiary
  def initialize(contents)
    @contents = contents
  end

  def read
    @contents
  end

  def jumbleatron(your_method_here)
    chars_in = @contents.chars
    chars_out = your_method_here(whatever_the_hell_steps_is)
    @contents = chars_out.join
  end

end

##############################################

class scramble_by_advance
  def initialize

  end

  def stuff1(steps)
    chars_out = plain_chars.map { |char|
      (char.ord + steps).chr }
  end

end

class unscramble_by_advance

  def stuff1(steps)
    scrambled_chars.map { |char|
      (char.ord - steps).chr }
  end

end

class reverse

  def stuff1
  @contents = @contents.reverse
  end

end
