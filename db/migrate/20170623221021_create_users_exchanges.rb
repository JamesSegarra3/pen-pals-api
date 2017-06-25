class CreateUsersExchanges < ActiveRecord::Migration[5.0]
  def change
    create_table :users_exchanges do |t|
      t.integer :user_id
      t.integer :exchange_id
      t.timestamps
    end
  end
end
