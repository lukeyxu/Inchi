class AddUserIdToTestlots < ActiveRecord::Migration
  def change
    add_column :testlots, :user_id, :integer
  end
end
