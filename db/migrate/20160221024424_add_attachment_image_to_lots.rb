class AddAttachmentImageToLots < ActiveRecord::Migration
  def self.up
    change_table :lots do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :lots, :image
  end
end
