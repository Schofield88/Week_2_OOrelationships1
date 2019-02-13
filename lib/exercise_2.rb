class User

  attr_reader :password

  def initialize(name, bio, age, password)
    @name = name
    @bio = bio
    @age = age
    @password = password
    @authenticate = Authenticate.new
  end

  def profile
    "#{name}, born in #{birth_year}: #{bio}"
  end

  def authenticate
    @authenticate.password
  end

  private

  def birth_year
    Time.new.year - @age
  end

end


class Authenticate

  def authenticate(password)
    return true if password == @password
    false
  end

end
