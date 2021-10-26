class OrgsController < ApplicationController
  before_action :authenticate_user!

  def index
    @orgs = Org.all
  end

  def show
    @org = Org.find(params[:id])
  end

  def new
    @org = Org.new
  end

  def create
    @org = Org.new(org_params)

    if @org.save
      flash[:notice] = "#{@org.name} created!"
      redirect_to orgs_path
    else
      render :new
    end
  end

  def edit
    @org = Org.find(params[:id])
  end

  def update
    @org = Org.find(params[:id])

    if @org.update(org_params)
      redirect_to @org
    else
      render :edit
    end
  end

  def destroy
    @org = Org.find(params[:id])
    @org.destroy
    flash[:notice] = "#{@org.name} deleted!"
    redirect_to orgs_path
  end

  private

  def org_params
    params.require(:org).permit(:name, :code)
  end
end
