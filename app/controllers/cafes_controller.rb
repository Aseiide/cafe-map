class CafesController < ApplicationController
  def create
    @cafe = Cafe.new(cafe_params)
    # @latitude = Cafe.new
    # @longitude = Cafe.new
    #保存
    @cafe.save
    binding.pry
  end
  def cafe_params
    params.require(:cafe).permit(:address)
  end
end
