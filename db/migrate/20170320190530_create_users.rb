class CreateUsers < ActiveRecord::Migration[5.0]
  def up
    create_table :users do |t|
      t.string :user_id
      t.string :user_name, limit: 50
      t.string :email
      t.string :password_digest

      t.timestamps
    end
    add_index("users", "user_id")
  end

  def down
    remove_index("users", "user_id")
    drop_table :users
  end
end
