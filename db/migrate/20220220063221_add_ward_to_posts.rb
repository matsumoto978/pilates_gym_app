class AddWardToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :ward, :integer, null: false
  end
end
