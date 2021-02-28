class CafesController < ApplicationController

  def index
    @test = Cafe.last
  end
end
