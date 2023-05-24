class Comment < ApplicationRecord
  # include IncrementorDcrementor  =>  can you check this i was unable to make my code dry i want to try this one
  # Associations
  belongs_to :author, class_name: 'User', foreign_key: :author_id
  belongs_to :post, class_name: 'Post'

  # i was unable to make my code dry i want to try this one
  # after_create { increment_counter(:comments_counter) } =>  can you check this
  # after_destroy { decrement_counter(:comments_counter) } =>  can you check this

  # creation and destructionction according to comment on post
  after_create :increment_comment_on_posts
  after_destroy :decrement_comment_on_posts

  private

  # I want to use my module can you help
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
