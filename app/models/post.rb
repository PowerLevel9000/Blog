class Post < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: :author_id
  has_many :comments, class_name: 'Comment', foreign_key: :comment_id, dependent: :destroy
  has_many :likes, class_name: 'Like', foreign_key: :like_id, dependent: :destroy
end
