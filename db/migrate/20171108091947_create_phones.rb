class CreatePhones < ActiveRecord::Migration[5.1]
  def change
    create_table :phones do |t|
      t.string :brand
      t.string :model
      t.integer :priceperweek
      t.string :condition

      t.timestamps
    end
  end
end
