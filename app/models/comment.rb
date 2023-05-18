class Comment < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: :author_id
  belongs_to :post, class_name: 'Post'
  after_create :decrement_comment_on_posts
  after_destroy :decrement_comment_on_posts

  def increment_comment_on_posts
    post.comments_counter += 1
    post.save
  end

  def decrement_comment_on_posts
    post.comments_counter -= 1
    post.save
  end
end
