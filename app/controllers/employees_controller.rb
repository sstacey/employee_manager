class EmployeesController < ApplicationController
  def index
    @employees = Employee.paginate(page: params[:page], per_page: 10)
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)

    if @employee.save
      redirect_to @employee
    else
      render :new
    end
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])

    if @employee.update(employee_params)
      redirect_to @employee
    else
      render :edit
    end
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy

    redirect_to root_path
  end
  

  private
  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :job_id, :org_id, :manager_id, :employee_status_id)
  end
end
