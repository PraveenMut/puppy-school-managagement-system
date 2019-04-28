class AddUserIdReferenceToPuppies < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :puppies, index: true, foreign_key: true
  end
end
