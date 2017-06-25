class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.boolean :reported
      t.boolean :available
      t.boolean :banned
      t.timestamps
    end
  end
end
