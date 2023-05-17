class RenamePuralizeCommentAndLikeInPost < ActiveRecord::Migration[7.0]
  def change
    rename_column :posts, :comment_counter, :comments_counter
    rename_column :posts, :like_counter, :likes_counter
  end
end
