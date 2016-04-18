class DashboardController < ApplicationController

	def index
		@lots = current_user.lots.first(3)
		@apartments = current_user.apartments.first(3)
		@classfieds = current_user.classfieds.first(3)
	end

end


