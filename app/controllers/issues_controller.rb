class IssuesController < ApplicationController
	before_filter :find_issue

	def index
		if params[:version_id]
			@version = Version.find params[:version_id] 
			@issues = @version.issues.paginate(:page => params[:page], :per_page => 10)
		end
	end

	private
	def find_issue
		@issue = Issue.find(params[:id]) if params[:id]
	end
end