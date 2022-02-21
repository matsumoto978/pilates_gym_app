class AddUrlToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :URL, :text
    add_column :posts, :TEL, :string
    add_column :posts, :address, :string, null: false
  end
end
