class CreateAdminUsers < ActiveRecord::Migration[5.0]
  def up
    create_table :admin_users do |t|
      t.string :admin_id
      t.string :password_digest

      t.timestamps
    end
    add_index("admin_users", "admin_id")
  end

  def down
    remove_index("admin_users", "admin_id")
    drop_table :admin_users
  end
end
