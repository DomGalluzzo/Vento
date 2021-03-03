class PublicInjuriesController < ApplicationController
  def new
    @public_injury = PublicInjury.new
  end

  def create
    @public_injury = PublicInjury.new(params[:public_injury])
    if @public_injury.save
      flash[:success] = "PublicInjury successfully created"
      redirect_to @public_injury
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end
  
  
end
