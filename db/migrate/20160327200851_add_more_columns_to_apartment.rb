class AddMoreColumnsToApartment < ActiveRecord::Migration
  def change
  	add_column :apartments, :bedroomtype, :string
  	add_column :apartments, :subleasing, :boolean
  	add_column :apartments, :pet, :boolean
  	add_column :apartments, :bedroomamount, :integer
  	add_column :apartments, :address, :string
  	add_column :apartments, :contactemail, :string
  	add_column :apartments, :contactwechat, :string
  	add_column :apartments, :contactqq, :string
  	add_column :apartments, :contactphone, :string
  end
end
