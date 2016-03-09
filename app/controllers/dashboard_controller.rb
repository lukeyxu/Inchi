class DashboardController < ApplicationController

	def index
		@mylist = current_user.lots.first(6)
	end

end


