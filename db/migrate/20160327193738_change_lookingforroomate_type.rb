class ChangeLookingforroomateType < ActiveRecord::Migration
  def up
    change_column :apartments, :lookforroomate, 'integer USING CAST(lookforroomate AS integer)'
  end

  def down
    change_column :apartments, :lookforroomate, :boolean
  end
end
