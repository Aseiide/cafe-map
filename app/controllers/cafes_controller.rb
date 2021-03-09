class CafesController < ApplicationController
  def index
    @cafe_latitude = Cafe.select("latitude").last(5)
    @cafe_longitude = Cafe.select("longitude").last(5)
  end
end
