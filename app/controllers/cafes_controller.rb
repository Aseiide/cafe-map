class CafesController < ApplicationController

  def index
    @cafe = Cafe.new
  end
end
