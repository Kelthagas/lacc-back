class IncludeIndexing < ActiveRecord::Migration[5.0]
  def up
    add_index("admin_users", "admin_id")
    add_index("users", "user_id")
  end

  def down
    remove_index("users", "user_id")
    remove_index("admin_users", "admin_id")
  end
end
