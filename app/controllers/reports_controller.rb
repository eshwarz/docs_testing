class ReportsController < ApplicationController

	layout 'reports'

	before_filter :authenticate_user!

	def index
		@group_numbers = Version.group_nums
	end

	def group_documents
		if params and params[:group_num]
			@group_num = params[:group_num]
			
			# results
			@results = Version.where( :group_num => @group_num ).paginate( :page => params[:page], :per_page => 20 )
			
			respond_to do |format|
				format.js {}
			end

		end
	end
	
	def group_status
		if params and params[:group_num]
			@group_num = params[:group_num]
			
			# results
			@results = Version.where( :group_num => @group_num ).paginate( :page => params[:page], :per_page => 20 )
			
			respond_to do |format|
				format.js {}
			end

		end
	end

end