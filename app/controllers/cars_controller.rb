class CarsController < ApplicationController

  before_action :set_car, only: [:show]

  def index
    @cars = Car.all
  end

  def new
    @car = Car.new
    @plate = params[:plate]
  end
  
  def create
    @car = Car.new(car_params)
    @car.save
    redirect_to @car
  end

  def show
  end

  private

  def set_car
    @car = Car.find(params[:id])
  end

  def car_params
    params.require(:car).permit(:plate, :picture)
  end
end
