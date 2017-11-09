class AddUserToPhone < ActiveRecord::Migration[5.1]
  def change
    add_reference :phones, :user, foreign_key: true
  end
end
