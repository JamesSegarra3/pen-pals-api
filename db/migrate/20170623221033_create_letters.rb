class CreateLetters < ActiveRecord::Migration[5.0]
  def change
    create_table :letters do |t|
      t.integer :exchange_id
      t.integer :sender_id
      t.integer :receiver_id
      t.string :body
      t.datetime :sent_time
      t.boolean :reported
      t.timestamps
    end
  end
end
