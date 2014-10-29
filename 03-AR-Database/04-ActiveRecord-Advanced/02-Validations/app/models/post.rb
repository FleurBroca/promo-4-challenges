class Post < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :user, :name, :url
  validates :name, length: { minimum: 5 }
  validates :name, uniqueness: {case_sensitive: false}
  validates :url, format: { with: /\A.*\..*\z/, message: "invalid url" }

  # TODO: Add some validation
end