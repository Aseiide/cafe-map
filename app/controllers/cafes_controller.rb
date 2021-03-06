class CafesController < ApplicationController
  def index
    @cafe_latitude = Cafe.last.latitude
    @cafe_longitude = Cafe.last.longitude
  end
end
