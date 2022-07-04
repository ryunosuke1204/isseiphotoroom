class PhotoroomsController < ApplicationController
  def index
    @photorooms = Photoroom.all
  end
end
