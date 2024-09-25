class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :quantity
      t.float :price
      t.boolean :available
      t.datetime :released_at
      t.date :expiry_date
      t.float :discount
      t.timestamps
    end
  end
end
