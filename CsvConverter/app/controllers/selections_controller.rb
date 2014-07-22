class SelectionsController < ApplicationController
	def index
		@selections = Selection.all
	end

	def create
		@selection = Selection.new(selection_params)

		if @selection.save
			redirect_to selection_path(@selection.id)
		else
			format.html { render action :new }
		end
	end

	def new
		@selection = Selection.new
	end

	def show
		@selection = Selection.find(params[:id])
	end

	private

	def selection_params
		params.require(:selection).permit(:id, :external_id, :locale, :description, :image_url, :mpn, :upc, :ean, :isbn, :model_num, :brands)
	end
end