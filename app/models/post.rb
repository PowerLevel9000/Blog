class Post < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: :author_id
  has_many :comments, class_name: 'Comment', dependent: :destroy
  has_many :likes, class_name: 'Like', dependent: :destroy

  after_create :update_user_posts_counter
  after_destroy :update_user_posts_counter

  def recent_five_comments
    comments.last(5)
  end

  def update_comment_counter
    update(comments_counter: comments.count)
  end

  def update_like_counter
    update(likes_counter: likes.count)
  end

  private

  def update_user_posts_counter
    author.update_posts_counter
  end
end
