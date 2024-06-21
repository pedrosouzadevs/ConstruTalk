class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  paginates_per 5
  validates :content, presence: true
  validates :user_id, presence: true
  validates :post_id, presence: true
end
