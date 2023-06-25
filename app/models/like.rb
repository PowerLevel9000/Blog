class Like < ApplicationRecord
  # Associations
  belongs_to :author, class_name: 'User', foreign_key: :author_id
  belongs_to :post, class_name: 'Post'

  # creation and destructionction according to like on post
  after_create :increment_like_on_posts
  after_destroy :decrement_like_on_posts

  private

  # Incrementor
  def increment_like_on_posts
    post.likes_counter += 1
    post.save
  end

  # Decrementor
  def decrement_like_on_posts
    post.likes_counter -= 1
    post.save
  end
end
