class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, class_name: 'Comment', foreign_key: 'reference_id', dependent: :destroy
  has_many :likes, class_name: 'Like', foreign_key: 'reference_id', dependent: :destroy
end
