class CreateApartPhotos < ActiveRecord::Migration
  def change
    create_table :apart_photos do |t|
      t.references :apartment, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
