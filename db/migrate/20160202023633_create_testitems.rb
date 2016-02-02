class CreateTestitems < ActiveRecord::Migration
  def change
    create_table :testitems do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
