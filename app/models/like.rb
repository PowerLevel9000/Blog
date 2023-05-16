class Like < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: :author_id
  belongs_to :post, class_name: "Post", foreign_key: :post_id

  after_create :like_update
  after_destroy :like_update

  private

  def like_update
    post.update_like_counter
  end
end
