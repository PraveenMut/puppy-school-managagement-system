class AddPriceToPuppies < ActiveRecord::Migration[5.2]
  def change
    add_column :puppies, :price, :float
  end
end
