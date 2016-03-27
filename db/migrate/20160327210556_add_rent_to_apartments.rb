class AddRentToApartments < ActiveRecord::Migration
  def change
  	add_column :apartments, :rent, :integer
  end
end
