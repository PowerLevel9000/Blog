class User < ApplicationRecord
  has_many :posts, class_name: 'Post', foreign_key: 'author_id', dependent: :destroy
  has_many :comments, class_name: 'Comment', foreign_key: 'author_id', dependent: :destroy
  has_many :likes, class_name: 'Like', foreign_key: 'author_id', dependent: :destroy

  validates :name, presence: true
  validates :posts_count, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  def last_three
    posts.last(3)
  end

  def update_posts_counter
    update(posts_counter: posts.count)
  end
end
