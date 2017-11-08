class AddColumnsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :street_address, :string
    add_column :users, :suburb, :string
    add_column :users, :postcode, :integer
    add_column :users, :state, :string
  end
end
