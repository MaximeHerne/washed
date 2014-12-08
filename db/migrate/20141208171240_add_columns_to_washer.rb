class AddColumnsToWasher < ActiveRecord::Migration
  def change
    add_column :washers, :first_name, :string
    add_column :washers, :last_name, :string
    add_column :washers, :phone, :string
    add_column :washers, :address, :string
  end
end
