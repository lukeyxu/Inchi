class ApartPhoto < ActiveRecord::Base
  belongs_to :apartment
  has_attached_file :image, styles: { huge: "1000x1000", large: "600x600", showpic: "450x450" , medium:"300x300", thumb: "100x100" }

  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
