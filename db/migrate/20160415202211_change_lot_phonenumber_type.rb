class ChangeLotPhonenumberType < ActiveRecord::Migration
  def change
    change_column :lots, :contactPhone, :integer, limit: 8
  end
end
