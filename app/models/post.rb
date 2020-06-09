class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :title, :body, presence: true
  validates :title, length: { in: 6..20 }
  validates :body, length: { maximum: 500 }
end
