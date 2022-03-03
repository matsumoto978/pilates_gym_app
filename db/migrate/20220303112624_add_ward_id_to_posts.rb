class AddWardIdToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :ward_id, :integer, null: false
  end
end
