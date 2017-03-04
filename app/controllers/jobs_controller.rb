class JobsController < ApplicationController
	def index
		@jobs = Job.all
	end

	def new
		@job = Job.new
	end

	def show
		@job = Job.find(params[:id])
	end

	def create
		@job = Job.new(jobs_params)
		if @job.save

		redirect_to job_path(@job)
	else
		flash[:notice] = @job.errors
		redirect_to :back
	end
	end

	def edit
		@job = Job.find(params[:id])
	end

	def destroy
		@job = Job.find(params[:id])

		@job.destroy
		redirect_to root_path
	end

	def update
		@job = Job.find(params[:id])

		if @job.update(jobs_params)
			redirect_to @job
		end
	end

	private

	def jobs_params
		params.require(:job).permit(:description, :origin, :destination, :quantity, :cost, :boat_id )
	end
end
