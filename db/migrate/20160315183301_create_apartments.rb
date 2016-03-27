class CreateApartments < ActiveRecord::Migration
  def change
    create_table :apartments do |t|
      t.string :title
      t.text :description
      t.boolean :lookforroomate
      t.boolean :sublease
      t.boolean :bedroom
      t.string :contact

      t.timestamps null: false
    end
  end
end
