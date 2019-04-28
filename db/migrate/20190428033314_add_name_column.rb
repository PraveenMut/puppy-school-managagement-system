class AddNameColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :string
    add_column :users, :buyer, :boolean
    add_column :users, :seller, :boolean
  end
end
