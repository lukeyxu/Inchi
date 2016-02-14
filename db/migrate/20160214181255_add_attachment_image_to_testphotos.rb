class AddAttachmentImageToTestphotos < ActiveRecord::Migration
  def self.up
    change_table :testphotos do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :testphotos, :image
  end
end
