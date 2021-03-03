class CancellationsController < ApplicationController
  def new
    @cancellation = Cancellation.new
  end

  def create
    @cancellation = Cancellation.new(params[:cancellation])
    if @cancellation.save
      flash[:success] = "Cancellation successfully created"
      redirect_to @cancellation
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end
end
