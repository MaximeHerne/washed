class AddDetailsAddressToUser < ActiveRecord::Migration
  def change
    add_column :users, :street_number, :integer
    add_column :users, :route, :string
    add_column :users, :locality, :string
    add_column :users, :administrative_area_level_1, :string
    add_column :users, :postal_code, :string
    add_column :users, :country, :string
  end
end
