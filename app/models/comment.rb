class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validate :content, presence: true
  validate :user_id, presence: true
  validate :post_id, presence: true
end
