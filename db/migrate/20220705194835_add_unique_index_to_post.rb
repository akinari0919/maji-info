class AddUniqueIndexToPost < ActiveRecord::Migration[6.1]
  def change
    add_index :posts, :body, unique: true
  end
end
