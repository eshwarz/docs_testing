class ReportsController < ApplicationController

	layout 'reports'

	before_filter :authenticate_user!

	def index
		@group_numbers = Version.group_nums
	end
	
end