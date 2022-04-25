class AddUniqIndexToUrlFromPosts < ActiveRecord::Migration[6.1]
  def change
    add_index :posts, :url, unique: true
  end
end
