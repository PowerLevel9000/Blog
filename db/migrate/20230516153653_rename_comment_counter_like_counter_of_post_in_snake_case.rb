class RenameCommentCounterLikeCounterOfPostInSnakeCase < ActiveRecord::Migration[7.0]
  def change
    rename_column :posts, :commentcounter, :comment_counter
    rename_column :posts, :likecounter, :like_counter
  end
end
