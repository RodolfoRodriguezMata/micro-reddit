class User < ApplicationRecord
  has_many :articles
  has_many :comments

  validates :username, length: { in: 2..25 }
  validates :username, :email, presence: true, uniqueness: true
  validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/, message: "standard email format" }
end
