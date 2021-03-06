class DocsController < ApplicationController
	
	before_filter :authenticate_user!
	
	def index
		if params[:doclink_ref_num]
			@filtered = Docs.where("doclink_ref_num LIKE ?","%#{params[:doclink_ref_num]}%")
			@docs = @filtered.paginate(:page => params[:page], :per_page => 10)
		else
			@docs = Docs.paginate(:page => params[:page], :per_page => 10)
		end
		respond_to do |format|
			format.js {}
			format.html {}
		end
	end

	def new
		@doc = Docs.new
	end

	def create
		if params && params[:docs]
			@doc = Docs.new params[:docs]
			if @doc.save
		  	redirect_to docs_path

		  else
		  	redirect_to new_doc_path
			end
  	end
	end

	def reports
	end

	def edit
		@doc = Docs.find(params[:id])
		@versions = @doc.versions.paginate(:page => params[:page], :per_page => 10)
		@requests = @doc.requests.paginate(:page => params[:page], :per_page => 10)
		@mappings = @doc.mappings.paginate(:page => params[:page], :per_page => 10)
	end

	def update
		if params[:id]
			@doc = Docs.find params[:id]
			if @doc.update_attributes params[:docs]
				redirect_to docs_path
			else
				redirect_to edit_doc_path(@doc)
			end
		end
	end

	def destroy
		@doc = Docs.find(params[:id]).delete
		redirect_to docs_path

	end

end
