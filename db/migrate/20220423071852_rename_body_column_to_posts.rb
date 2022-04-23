class RenameBodyColumnToPosts < ActiveRecord::Migration[6.1]
  def change
    rename_column :posts, :body, :url
  end
end
