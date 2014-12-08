class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :formula
      t.string :temperature
      t.integer :price
      t.datetime :pickup_start_date
      t.datetime :pickup_end_date
      t.datetime :delivery_start_date
      t.datetime :delivery_end_date
      t.references :user, index: true
      t.references :washer, index: true

      t.timestamps
    end
  end
end
