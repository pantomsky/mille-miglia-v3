class DriversController < ApplicationController

  def new
    @driver = Driver.new
  end

  def create
    @driver = Driver.new(driver_params)
    @driver.save
    redirect_to drivers_path
  end

  def edit
    @driver = Driver.find(params[:id])
  end

  def update
    @driver = Driver.find(params[:id])
    if @driver.update(driver_params)
      redirect_to(@driver)
    else
      render :edit
    end
  end

  def show
    @driver = Driver.find(params[:id])
  end

  def index
    @drivers = Driver.all
  end

  private
  def driver_params
   params.require(:driver).permit(:name, :surname, :address)
  end

end
