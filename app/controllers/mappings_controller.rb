class MappingsController < ApplicationController
	
	before_filter :authenticate_user!
	before_filter :find_mapping

	def new
		@mapping = Mapping.new
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
		if params and params[:mapping]
			@mapping = Mapping.create params[:mapping]
			@doc = @mapping.docs
      if @mapping
      	flash[:notice] = "Mapping created !"
      else
      	flash[:error] = "Mapping not created !"
      end

			respond_to do |format|
				format.js { render :create }
				format.html {}
			end
		end
	end

	def update
		if params and params[:mapping]
			@doc = @mapping.docs
			@updated = @mapping.update_attributes params[:mapping]
      if @updated
      	flash[:notice] = "Mapping updated !"
      else
      	flash[:error] = "Mapping not updated !"
      end

			respond_to do |format|
				format.js { render :update }
				format.html {}
			end
		end
	end

	def destroy
		if @mapping
			@mapping.delete
		end
		respond_to do |format|
			format.js { render :destroy }
			format.html {}
		end
	end

	private
	def find_mapping
		@mapping = Mapping.find(params[:id]) if params[:id]
	end
end