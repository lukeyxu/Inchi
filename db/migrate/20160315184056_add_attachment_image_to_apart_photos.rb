class AddAttachmentImageToApartPhotos < ActiveRecord::Migration
  def self.up
    change_table :apart_photos do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :apart_photos, :image
  end
end
