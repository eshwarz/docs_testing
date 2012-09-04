class ReportsController < ApplicationController

	layout 'reports'

	before_filter :authenticate_user!

	def index
		@group_numbers = Version.group_nums
		@doclink_ref_nums = Docs.all.map { |d| d.doclink_ref_num }
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

	def document_history
		if params and params[:doclink_ref_num]
			@doc_num = params[:doclink_ref_num]
			
			# results
			@docs = Docs.find_by_doclink_ref_num(@doc_num)
			@results = @docs.versions.paginate( :page => params[:page], :per_page => 20 )
			
			respond_to do |format|
				format.js {}
			end

		end
	end

	def pqs_matrix
		# results
		@versions = []
		Docs.all.each do |d|
			@version = d.versions.order('created_at DESC').limit(1)
			@versions << @version[0] if @version.count > 0
		end
		@results = @versions.paginate( :page => params[:page], :per_page => 20 )
		
		respond_to do |format|
			format.js {}
		end
	end

	def onhold_report
		# results
		@results = Version.where( :lia_status => "On hold" ).paginate( :page => params[:page], :per_page => 20 )
		
		respond_to do |format|
			format.js {}
		end
	end

	def open_requests
		# results
		@results = Request.where( :request_closed_date => nil ).paginate( :page => params[:page], :per_page => 20 )
		
		respond_to do |format|
			format.js {}
		end
	end

end