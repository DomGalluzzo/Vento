class ContractPlansController < ApplicationController
  def new
    @contract = Contract.find(params[:contract_id])
    @contract_plan = ContractPlan.new
  end

  def public_injuries
    @contract_plan = ContractPlan.new(public_injury_params)
    @contract = Contract.find(params[:contract_id])

    if @contract_plan.save
      flash[:success] = "ContractPlan successfully created"

    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  def cancellations
    @contract_plan = ContractPlan.new(cancellation_params)
    @contract = Contract.find(params[:contract_id])

    if @contract_plan.save
      flash[:success] = "ContractPlan successfully created"

    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  private

  def public_injury_params
    params.require(:public_injury).permit(:liability, :daily, :total, :usa, :dangerous, :sub)
  end

  def cancellation_params
    params.require(:cancellation).permit(:budget, :terrorism, :location, :rain, :flood, :loss, :weather)
  end
end
