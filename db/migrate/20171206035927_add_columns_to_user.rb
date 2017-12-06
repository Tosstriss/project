class AddColumnsToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :First_Name, :string
    add_column :users, :Last_Name, :string
    add_column :users, :Address, :string
    add_column :users, :Postal_Code, :string
    add_reference :users, :Province, foreign_key: true
  end
end
