class IssuesController < ApplicationController
	
	before_filter :authenticate_user!
	before_filter :find_issue

	def index
		if params[:version_id]
			@version = Version.find params[:version_id]
			@issues = @version.issues.paginate(:page => params[:page], :per_page => 10)
		end
	end

	def new
		if params[:version_id]
			@version = Version.find params[:version_id]
			@issue = Issue.new
		end
		respond_to do |format|
			format.js { render :form }
		end
	end

	def create
		if params and params[:issue]
			@issue = Issue.create params[:issue]
			@version = @issue.version
			if @issue
				flash[:success] = "Issue created!"
			else
				flash[:error] = "Issue not created!"
			end
		end
	end

	def edit
		@version = Version.find params[:version_id]
		respond_to do |format|
			format.js { render :form }
		end
	end

	def update
		if params and params[:issue]
			@version = @issue.version
			@updated = @issue.update_attributes params[:issue]
			if @updated
				flash[:success] = "Issue updated!"
			else
				flash[:error] = "Issue not updated!"
			end
			respond_to do |format|
				format.js { }
			end
		end
	end

	def destroy
		if @issue
			if @issue.delete
				flash[:success] = "Issue deleted!"
			else
				flash[:error] = "Issue not deleted!"
			end
		end	
	end

	private
	def find_issue
		@issue = Issue.find(params[:id]) if params[:id]
	end
end