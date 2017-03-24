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

			redirect_to root_path
		else
			flash[:alert] = "this name is already taken"
			redirect_to :back
		end
	end

	def destroy
		@boat = Boat.find(params[:id])
		@boat.destroy

		redirect_to root_path
		
	end

	def sam
		boat = Boat.new
		boat.name = params[:name]
		boat.location = params[:location]
		boat.quantity = params[:quantity]

		job_boat = Jobboat.new
		job_boat.boat_id = boat_id
		job_boat.job_id = params[:job_id]
		job_boat.save

		redirect_to :back
		
	end

	private

	def boats_params
		params.require(:boat).permit(:name, :location, :quantity)
	end
end
