class AddUserIdToClassfieds < ActiveRecord::Migration
  def change
  	add_column :classfieds, :user_id, :integer
  end
end
