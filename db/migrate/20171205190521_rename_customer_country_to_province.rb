class RenameCustomerCountryToProvince < ActiveRecord::Migration[5.1]
  def change
    rename_column :Customers, :country, :province
  end
end
