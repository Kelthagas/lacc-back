class CreateCustomers < ActiveRecord::Migration[5.0]
  def up
    create_table :customers do |t|
      t.string :customer_number, limit: 20
      t.string :last_name, default: '', null: false
      t.string :first_name, default: '', null: false
      t.string :email, default: '', null: false
      t.string :referred_by, default: '', null: false

      t.timestamps
    end
  end

  def down
    drop_table :customers
  end
end
