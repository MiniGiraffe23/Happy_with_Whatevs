class User < ApplicationRecord
  # Remember to create a migration!
  has_many :rounds
  has_many :guesses, through: :rounds

  validates :email, presence: true, uniqueness: true
  validates :username, null: false

  def password
    @password ||= BCrypt::Password.new(encrypted_password)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.encrypted_password = @password
  end

  def self.authenticate(params = {})
    @user = self.find_by(email: params[:email])

    if @user.password == params[:password]
      @user
    else
      nil
    end
  end
end
