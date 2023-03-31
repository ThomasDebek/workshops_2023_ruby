class ValidatePassword
  def initialize(password)
    @password = password
  end

  def check_password
    return false unless @password.length.between?(6, 24)
    return false unless @password.match?(/[A-Z]/)
    return false unless @password.match?(/[a-z]/)
    return false unless @password.match?(/\d/)
    return false unless @password.match?(/[!@#\$%&\*\+=:;?<>\(\)]/)
    return false if @password.scan(/(.)\1+/).flatten.any? { |s| s.length > 2 }
    true
  end
end

password_one = "Password1!"
password_second = "password1!"

p first = ValidatePassword.new(password_one).check_password

p second = ValidatePassword.new(password_second).check_password



