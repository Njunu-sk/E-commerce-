class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :first_name, null: true
      t.string :last_name, null: true
      t.decimal :sub_total, null: false, precision: 15, scale: 2
      t.string :token
      t.string :status, default: 'cart'
      t.integer :user_id

      t.timestamps
    end
  end
  # Order.where(status: nil).update_all(status: 'cart')
end
