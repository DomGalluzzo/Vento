class CancellationsController < ApplicationController
  def new
    @cancellation = Cancellation.new
    # @contract_plan = @cancellation.contract_plans.build(contract_plan)
  end

  def create
    @cancellation = Cancellation.new(cancellation_params)
    # @cancellation.contract_plan.plannable = @cancellation
    if @cancellation.save
      flash[:success] = "Cancellation successfully created"
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  # def show
  #   @cancellation = Cancellation.find(params[:id])
  #   @contract_plan = @cancellation.plannable.new
  # end

  private

  def cancellation_params
    params.require(:cancellation).permit(:budget, :terrorism, :location, :rain,
                                         :flood, :loss, :weather, { contract_plan_attributes: [:contract_plan] })
  end
end
