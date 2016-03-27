class Apartment < ActiveRecord::Base
	belongs_to :user
	has_many :apart_photos, :dependent => :destroy
end
