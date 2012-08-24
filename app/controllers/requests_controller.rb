class RequestsController < ApplicationController
	
	before_filter :authenticate_user!
	before_filter :find_request

	def new
		@request = Request.new
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
		if params and params[:request]
			@request = Request.create params[:request]
			@doc = @request.docs
      if @request
      	flash[:notice] = "Request created !"
      else
      	flash[:error] = "Request not created !"
      end

			respond_to do |format|
				format.js { render :create }
				format.html { redirect_to edit_doc_path( @doc.id ) }
			end
		end
	end

	def update
		if params and params[:request]
			@doc = @request.docs
			@updated = @request.update_attributes params[:request]
      if @updated
      	flash[:notice] = "Request updated !"
      else
      	flash[:error] = "Request not updated !"
      end

			respond_to do |format|
				format.js { render :update }
				format.html { redirect_to edit_doc_path( @doc.id ) }
			end
		end
	end

	def destroy
		if @request
			@request.delete
		end
		respond_to do |format|
			format.js { render :destroy }
			format.html {}
		end
	end

	private
	def find_request
		@request = Request.find(params[:id]) if params[:id]
	end
end