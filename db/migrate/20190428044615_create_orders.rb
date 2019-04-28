class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.references :puppy, foreign_key: true
      t.string :puppy_title
      t.integer :puppy_price
      t.string :first_name
      t.string :last_name
      t.string :street
      t.string :suburb
      t.integer :postcode
      t.string :state
      t.string :country

      t.timestamps
    end
  end
end
