class CreateLots < ActiveRecord::Migration
  def change
    create_table :lots do |t|
      t.string :title
      t.text :description
      t.string :status
      t.string :category

      t.timestamps null: false
    end
  end
end
