class AddMoreFieldsToLots < ActiveRecord::Migration
  def change
  	add_column :lots, :pickup, :boolean
  	add_column :lots, :contactPhone, :integer
  	add_column :lots, :contactEmail, :string
  	add_column :lots, :contactWechat, :string
  	add_column :lots, :lotAddress, :string
  end
end
