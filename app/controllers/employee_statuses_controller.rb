class EmployeeStatusesController < ApplicationController
  def index
    @employee_statuses = EmployeeStatus.paginate(page: params[:page], per_page: 10)
  end

  def show
    @employee_status = EmployeeStatus.find(params[:id])
  end

  def new
    @employee_status = EmployeeStatus.new
  end

  def create
    @employee_status = EmployeeStatus.new(employee_status_params)

    if @employee_status.save
      flash[:notice] = "#{@employee_status.name} created!"
      redirect_to employee_statuses_path
    else
      render :new
    end
  end

  def edit
    @employee_status = EmployeeStatus.find(params[:id])
  end

  def update
    @employee_status = EmployeeStatus.find(params[:id])

    if @employee_status.update(employee_status_params)
      redirect_to @employee_status
    else
      render :edit
    end
  end

  def destroy
    @employee_status = EmployeeStatus.find(params[:id])
    @employee_status.destroy
    flash[:notice] = "#{@employee_status.name} deleted!"
    redirect_to employee_statuses_path
  end
  

  private
  def employee_status_params
    params.require(:employee_status).permit(:code, :name)
  end
end
