class CreateTestphotos < ActiveRecord::Migration
  def change
    create_table :testphotos do |t|
      t.references :testlot, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
