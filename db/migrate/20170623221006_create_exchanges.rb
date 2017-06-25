class CreateExchanges < ActiveRecord::Migration[5.0]
  def change
    create_table :exchanges do |t|
      t.integer :first_user_id
      t.integer :second_user_id
      t.datetime :last_sent_time
      t.timestamps
    end
  end
end
