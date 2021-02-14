class CafesController < ApplicationController
  def create
    @cafe = Cafe.new
    @latitude = Cafe.new
    @longitude = Cafe.new
    #保存
    @cafe.save
    @latitude.save
    @longitude.save
    binding.pry
  end
end
