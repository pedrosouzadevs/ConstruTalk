class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  belongs_to :user
  paginates_per 4
  validates :title, presence: true
  validates :content, presence: true
  validates :user_id, presence: true
end
