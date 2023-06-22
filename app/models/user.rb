class User < ApplicationRecord
  # Associations
  has_many :posts, class_name: 'Post', foreign_key: 'author_id', dependent: :destroy
  has_many :comments, class_name: 'Comment', foreign_key: 'author_id', dependent: :destroy
  has_many :likes, class_name: 'Like', foreign_key: 'author_id', dependent: :destroy

  # Default attributes
  attribute :posts_counter, default: 0

  # validations of Records
  validates :name, presence: true
  validates :posts_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  # displaying last three Posts made by user
  def last_three
    posts.order(created_at: :desc).limit(3)
  end
end
