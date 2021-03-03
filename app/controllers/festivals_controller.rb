class FestivalsController < ApplicationController
  def new
    @festival = Festival.new
  end

  def create
    @festival = Festival.new(festival_params)
    @festival.user = current_user
    if @festival.save
      flash[:success] = "Festival successfully created"
      redirect_to @festival
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  private

  def festival_params
    params.require(:fetival).permit(:user_id, :start_date, :end_date, :genre, :name, :venue)
  end
end
