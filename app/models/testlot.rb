class Testlot < ActiveRecord::Base
	belongs_to :user
	has_attached_file :image, styles: { large: "600x600>", medium:"300x300", thumb: "100x100>" }
	has_many :testphotos, :dependent => :destroy
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
