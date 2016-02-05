class AddAttachmentImageToTestlots < ActiveRecord::Migration
  def self.up
    change_table :testlots do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :testlots, :image
  end
end
