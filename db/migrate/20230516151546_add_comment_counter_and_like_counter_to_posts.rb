class AddCommentCounterAndLikeCounterToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :commentcounter, :integer
    add_column :posts, :likecounter, :integer
  end
end
