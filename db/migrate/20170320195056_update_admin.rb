class UpdateAdmin < ActiveRecord::Migration[5.0]
  def up
    add_column("admin_users", "admin_name", :string, after: "admin_id")
  end

  def down
    remove_column("admin_users", "admin_name")
  end
end
