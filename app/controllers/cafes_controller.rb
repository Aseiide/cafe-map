class CafesController < ApplicationController
  def index
    @all_cafe_position = Cafe.all.pluck(:latitude, :longitude)
    # @cafe_latitude = cafe_latitude
    # @cafe_longitude = cafe_longitude
  end

  private

    # def cafe_latitude
    #   @all_cafe.pluck(:latitude)
    # end

    # def cafe_longitude
    #   @all_cafe.pluck(:longitude)
    # end
end

