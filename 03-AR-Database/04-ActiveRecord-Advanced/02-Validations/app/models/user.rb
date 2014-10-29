class User < ActiveRecord::Base
  has_many :posts
  validates :username, :email, presence: true
  validates :username,  uniqueness: true
  validates :email, format: { with: /\A[^@\s]+@([^@.\s]+\.)+[^@.\s]+\z/, message: "invalid email" }
  before_validation :remove_blanks

  private

  def remove_blanks
    self.email = email.remove_blanks unless email.nil?
  end

  # TODO: Add some validation
end