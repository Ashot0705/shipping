class BoatsController < ApplicationController
	def index
		@boats = Boat.all
	end

	def show
		@boat = Boat.find(params[:id])
	end

	def new
		@boat = Boat.new
	end

	def create
		@boat = Boat.new(boats_params)
		if @boat.save

			redirect_to job_path(@jobs)
		else
			redirect_to :back
		end
	end

	def destroy
		@boat = Boat.find(params[:id])
		@boat.destroy

		redirect_to root_path
		
	end

	private

	def boats_params
		params.require(:boat).permit(:name, :location, :quantity)
	end
end
