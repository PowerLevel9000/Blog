class Comment < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: :author_id
  belongs_to :post, class_name: 'Post', foreign_key: :post_id
  after_create :update_comment
  after_destroy :update_comment
  private

  def update_comment
    post.update_comment_counter
  end
end
