class Comment < ApplicationRecord
  # Associations
  belongs_to :author, class_name: 'User', foreign_key: :author_id
  belongs_to :post, class_name: 'Post'

  # creation and destructionction according to comment on post
  after_create :increment_comment_on_posts
  after_destroy :decrement_comment_on_posts

  private

  # incrementor
  def increment_comment_on_posts
    post.comments_counter += 1
    post.save
  end

  # decrementor
  def decrement_comment_on_posts
    post.comments_counter -= 1
    post.save
  end
end
