class Admin::PhotoroomsController < ApplicationController
  before_action :if_not_admin
  def new
    @photoroom = Photoroom.new
  end

  def create
    @photoroom = Photoroom.new(photoroom_params)
    if @photoroom.valid?
      @photoroom.save
      redirect_to root_path
    else
      render 'new'
    end
  end
  def destroy
    photoroom = Photoroom.find(params[:id])
    photoroom.destroy
  end


  private
  def if_not_admin
    redirect_to root_path unless current_user.admin?
  end

  def photoroom_params
    params.require(:photoroom).permit(:text).merge(user_id: current_user.id)
  end
end
