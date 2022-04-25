class AddColumnsToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :title, :string, null: false
    add_column :posts, :body, :text, null: false
    add_column :posts, :contributor, :string, null: false
    add_index :posts, :title, unique: true
    add_index :posts, :body, unique: true
  end
end
