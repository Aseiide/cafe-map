class CafesController < ApplicationController
  def index
    @all_cafe_position = Cafe.all.pluck(:latitude, :longitude).to_json
  end
end
