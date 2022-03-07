class RemoveWardFromPosts < ActiveRecord::Migration[6.1]
  def up
    remove_column :posts, :ward
  end

  def down
    add_column :posts, :ward, :integer
  end
end
