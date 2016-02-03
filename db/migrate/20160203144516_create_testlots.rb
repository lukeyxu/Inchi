class CreateTestlots < ActiveRecord::Migration
  def change
    create_table :testlots do |t|
      t.string :name
      t.text :description
      t.boolean :status

      t.timestamps null: false
    end
  end
end
