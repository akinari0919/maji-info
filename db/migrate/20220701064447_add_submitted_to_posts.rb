class AddSubmittedToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :submitted, :boolean, default: false, null: false
  end
end
