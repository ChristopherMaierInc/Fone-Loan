class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.text :message
      t.integer :sender_id
      t.references :conversation, foreign_key: true

      t.timestamps
    end
  end
end
