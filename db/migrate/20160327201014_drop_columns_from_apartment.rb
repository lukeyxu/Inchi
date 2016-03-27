class DropColumnsFromApartment < ActiveRecord::Migration
  def change
  	remove_column :apartments, :sublease
  	remove_column :apartments, :bedroom
  	remove_column :apartments, :contact
  end
end
