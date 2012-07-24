class ReportsController < ApplicationController

	layout 'reports'

	before_filter :authenticate_user!

	def index
		
	end
	
end