class SetDefaultCounterValue < ActiveRecord::Migration[7.0]
  def change
    def up
      change_column_default :users, :posts_counter, from: nil, to: 0
      change_column_default :posts, :comments_counter, from: nil, to: 0
      change_column_default :posts, :likes_counter, from: nil, to: 0
    end
  
    def down
      change_column_default :users, :posts_counter, from: 0, to: nil
      change_column_default :posts, :comments_counter, from: 0, to: nil
      change_column_default :posts, :likes_counter, from: 0, to: nil
    end
  end
end
