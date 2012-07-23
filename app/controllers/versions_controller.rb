class VersionsController < ApplicationController
	
	before_filter :authenticate_user!
	before_filter :find_version

	def new
		@version = Version.new
		respond_to do |format|
			format.js { render :new }
			format.html {}
		end
	end

	def edit
		respond_to do |format|
			format.js { render :edit }
			format.html {}
		end
	end

	def create
		if params and params[:version]
			@version = Version.create params[:version]
			@doc = @version.docs
      if @version
      	flash[:notice] = "Version created !"
      else
      	flash[:error] = "Version not created !"
      end

			respond_to do |format|
				format.js { render :create }
				format.html {}
			end
		end
	end

	def update
		if params and params[:version]
			@doc = @version.docs
			@updated = @version.update_attributes params[:version]
      if @updated
      	flash[:notice] = "Version updated !"
      else
      	flash[:error] = "Version not updated !"
      end

			respond_to do |format|
				format.js { render :update }
				format.html {}
			end
		end
	end

	def destroy
		if @version
			@version.delete
		end
		respond_to do |format|
			format.js { render :destroy }
			format.html {}
		end
	end

	private
	def find_version
		@version = Version.find(params[:id]) if params[:id]
	end
end