class FestivalsController < ApplicationController
  def my_festivals
    @festivals = current_user.festivals
  end

  def index
    @festivals = Festival.all
  end

  def new
    @festival = Festival.new
  end

  def create
    @festival = Festival.new(festival_params)
    @festival.user = current_user
    if @festival.save
      @contract = Contract.new
      @contract.festival = @festival
      @contract.save!
      flash[:success] = "Festival successfully created"
      redirect_to @contract
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end
  
  def show
    @festival = Festival.find(params[:id])
  end
  

  private

  def festival_params
    params.require(:festival).permit(:user_id, :start_date, :end_date, :address, :genre, :name, :venue)
  end
end
