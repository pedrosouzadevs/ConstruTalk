class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  belongs_to :user

  validates :title, presence: true
  validate :content, presence: true
  validate :user_id, presence: true
end
