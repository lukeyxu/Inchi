class DashboardController < ApplicationController

	def index
		@mylist = current_user.lots.all
	end

end


