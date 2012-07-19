class DocsController < ApplicationController
	
	def index
		@docs = Docs.paginate(:page => params[:page], :per_page => 10)
	end

	def new
		@doc = Docs.new
	end

	def create
		if params and params[:docs]
			Docs.create params[:docs]
  	end
  	redirect_to docs_index_path
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
			@doc.update_attributes params[:docs]
			redirect_to docs_index_path
		end
	end

	def destroy
		@doc = Docs.find(params[:id])
	end

end
