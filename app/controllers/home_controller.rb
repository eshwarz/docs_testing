class HomeController < ApplicationController

	before_filter :authenticate_user!

	def index
		@home_page = "This is home page of PTQS Documents"
	end

	# def reports
	# 	@reports_page = "This is the reports page of PTQS Documents"
	# end

end