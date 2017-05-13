class User < ApplicationRecord
  # Remember to create a migration!
  has_many :rounds
  has_many :guesses, through: :rounds

  validates :email, presence: true, uniqueness: true


  def password
    @password = BCrypt::Password.new(encrypted_password)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.encrypted_password = @password
  end

  def self.authenticate(user = {})
    @user = self.find_by(email: user[:email])

    if @user.password == user[:password]
      @user
    else
      nil
    end
  end
end


