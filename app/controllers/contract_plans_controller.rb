class ContractPlansController < ApplicationController
  def new
    @contract = Contract.find(params[:contract_id])
    @contract_plan = ContractPlan.new
  end

  def create
    @contract_plan = ContractPlan.new(contract_plan_params)
    @contract = Contract.find(params[:contract_id])

    # ? Add plannable_id ?

    if @contract_plan.save
      flash[:success] = "ContractPlan successfully created"
      redirect_to @contract_plan
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  private

  def contract_plan_params
    params.require(:contract_plan).permit(:contract_id, :plannable_id, :plannable_type)
  end
end
