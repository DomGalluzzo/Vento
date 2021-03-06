class CancellationsController < ApplicationController
  def new
    @cancellation = Cancellation.new
  end

  def create
    @cancellation = Cancellation.new(cancellation_params)
    if @cancellation.save
      flash[:success] = "Cancellation successfully created"
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  def show
    @cancellation = Cancellation.find(params[:id])
    @contract_plan = @cancellation.plannable.new
  end

  private

  def cancellation_params
    params.require(:cancellation).permit(:budget, :terrorism, :location, :rain, :flood, :loss, :weather)
  end
end
