class CreateUsers < ActiveRecord::Migration[5.0]
  def up
    create_table :users do |t|
      t.integer :user_id
      t.string :password
      t.string :user_name
      t.string :email
      t.boolean :logged_in

      t.timestamps
    end
  end

  def down
    drop_table :users
  end
end
