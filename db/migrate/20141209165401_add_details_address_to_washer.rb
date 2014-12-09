class AddDetailsAddressToWasher < ActiveRecord::Migration
  def change
    add_column :washers, :street_number, :integer
    add_column :washers, :route, :string
    add_column :washers, :locality, :string
    add_column :washers, :administrative_area_level_1, :string
    add_column :washers, :postal_code, :string
    add_column :washers, :country, :string
  end
end
