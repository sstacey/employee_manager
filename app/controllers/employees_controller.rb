class EmployeesController < ApplicationController
  before_action :authenticate_user!

  def index
    @employees = Employee.search(params[:query])
                         .order("#{params[:column]} #{params[:direction]}")
                         .paginate(page: params[:page], per_page: 10)
    @show_all = params[:all]
    if @show_all == 'true'
      @employees
    else
      @employees = @employees.active
      @show_all = false
    end
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
      flash[:notice] = "#{@employee.first_name} #{@employee.last_name} created!"
      redirect_to employees_path
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
      redirect_to employees_path
    else
      render :edit
    end
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    flash[:notice] = "#{@employee.full_name} deleted!"
    redirect_to employees_path
  end

  private

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :job_id, :org_id, :manager_id, :employee_status_id,
                                     :code, :query, :all, :column, :direction)
  end
end
