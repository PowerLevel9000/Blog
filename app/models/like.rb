class Like < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: :author_id
  belongs_to :post, class_name: 'Post'

  after_create :increment_like_on_posts
  after_destroy :decrement_like_on_posts

  private

  def increment_like_on_posts
    post.likes_counter += 1
    post.save
  end

  def decrement_like_on_posts
    post.likes_counter -= 1
    post.save
  end
end
