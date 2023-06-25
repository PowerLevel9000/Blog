class Post < ApplicationRecord
  # Associations
  belongs_to :author, class_name: 'User', foreign_key: :author_id
  has_many :comments, class_name: 'Comment', dependent: :destroy
  has_many :likes, class_name: 'Like', dependent: :destroy
  attribute :comments_counter, default: 0
  attribute :likes_counter, default: 0

  # creation and destruction according to Post creation by user
  after_create :increment_user_posts_counter
  after_destroy :decrement_user_posts_counter

  # validation
  validates :title, presence: true
  validates :title, length: { maximum: 250 }
  validates :comments_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :likes_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  # display five recent comments
  def recent_five_comments
    comments.last(5)
  end

  private
  
  # Incrementor
  def increment_user_posts_counter
    author.posts_counter += 1
    author.save
  end

  # Decrementor
  def decrement_user_posts_counter
    author.posts_counter -= 1
    author.save
  end
end
