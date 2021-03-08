class CancellationsController < ApplicationController
  def new
    @cancellation = Cancellation.new
    @contract = Contract.find(params[:contract_id])
  end

  def create
    @cancellation = Cancellation.new(cancellation_params)
    @contract = Contract.find(params[:contract_id])
    if @cancellation.save
      @contract_plan = ContractPlan.new
      @contract_plan.contract = @contract
      @contract_plan.plannable = @cancellation
      @contract_plan.save!
      flash[:success] = "Cancellation successfully created"
      redirect_to @contract
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
