class JobsController < ApplicationController
  before_action :authenticate_user!

  def index
    @jobs = Job.order("#{params[:column]} #{params[:direction]}")
               .paginate(page: params[:page], per_page: 10)
  end

  def show
    @job = Job.find(params[:id])
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)

    if @job.save
      flash[:notice] = "#{@job.name} created!"
      redirect_to jobs_path
    else
      render :new
    end
  end

  def edit
    @job = Job.find(params[:id])
  end

  def update
    @job = Job.find(params[:id])

    if @job.update(job_params)
      redirect_to @job
    else
      render :edit
    end
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy
    flash[:alert] = "#{@job.name} deleted!"
    redirect_to jobs_path
  end

  private

  def job_params
    params.require(:job).permit(:name, :code)
  end
end
