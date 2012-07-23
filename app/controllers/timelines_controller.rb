class TimelinesController < ApplicationController
	before_filter :find_timeline

	def index
		if params[:version_id]
			@version = Version.find params[:version_id]
			@timelines = @version.timelines.paginate(:page => params[:page], :per_page => 10)
		end
	end

	def new
		if params[:version_id]
			@version = Version.find params[:version_id]
			@timeline = Timeline.new
		end
		respond_to do |format|
			format.js { render :form }
		end
	end

	def create
		if params and params[:timeline]
			@timeline = Timeline.create params[:timeline]
			@version = @timeline.version
			if @timeline
				flash[:success] = "Timeline created!"
			else
				flash[:error] = "Timeline not created!"
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
		if params and params[:timeline]
			@version = @timeline.version
			@updated = @timeline.update_attributes params[:timeline]
			if @updated
				flash[:success] = "Timeline updated!"
			else
				flash[:error] = "Timeline not updated!"
			end
		end
	end

	def destroy
		if @timeline
			if @timeline.delete
				flash[:success] = "Timeline deleted!"
			else
				flash[:error] = "Timeline not deleted!"
			end
		end	
	end

	private
	def find_timeline
		@timeline = Timeline.find(params[:id]) if params[:id]
	end
end