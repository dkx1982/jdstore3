class Admin::ChangjingsController < ApplicationController

  layout "admin"
  before_action :authenticate_user!
  before_action :admin_required

  def index
    @changjings = Changjing.all
    @changjing = Changjing.new
  end

  def create
    @changjing = Changjing.new(changjing_params)
    if @changjing.save
      redirect_to admin_changjings_path
    else
      render admin_changjings_path
    end
  end




  private
  def changjing_params
    params.require(:changjing).permit(:name)
  end
end
