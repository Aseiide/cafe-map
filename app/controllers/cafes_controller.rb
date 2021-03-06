class CafesController < ApplicationController
  def index
    @test = Cafe.last.latitude
  end
end
