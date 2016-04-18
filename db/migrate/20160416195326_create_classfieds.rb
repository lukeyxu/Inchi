class CreateClassfieds < ActiveRecord::Migration
  def change
    create_table :classfieds do |t|
      t.string :title
      t.text :description
      t.string :category
      t.string :phone
      t.string :email
      t.string :wechat

      t.timestamps null: false
    end
  end
end
