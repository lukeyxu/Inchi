class ApartPhotosController < ApplicationController
	def new
		@apartment = Apartment.find(params[:lot_id])
		@picture = @apartment.photos.build

		respond_to do |format|
		  format.html # new.html.erb
		  format.json { render json: @picture }
		end
	end

	def destroy
		@photo = Apart_photo.find(params[:id])
		@apartment = photo.apartment
		@photo.destroy

		respond_to do |format|
		  format.html { redirect_to @apartment }
		  format.js
		end
	end
end
