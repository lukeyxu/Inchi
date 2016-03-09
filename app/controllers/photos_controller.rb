class PhotosController < ApplicationController
	def new
		@lot = Lot.find(params[:lot_id])
		@picture = @lot.photos.build

		respond_to do |format|
		  format.html # new.html.erb
		  format.json { render json: @picture }
		end
	end

	def destroy
		@photo = Photo.find(params[:id])
		@photo.destroy

		respond_to do |format|
		  format.html { redirect_to root_path }
		  format.js
		end
	end
end
