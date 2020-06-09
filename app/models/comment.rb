class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :title, :content, :user_id, :post_id, presence: true
  validates :title, length: { in: 6..20 }
  validates :content, length: { maximum: 500 }
end
