class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.string :image
      t.decimal :price, precision: 5, scale: 2, default: 0
      t.integer :user_id

      t.timestamps
    end
  end
end
