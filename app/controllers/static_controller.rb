class StaticController < ApplicationController
  def index
    @cars = Car.all.map { |c| [c.plate.to_i, c] }.to_h
    @car = Car.new
  end
end
