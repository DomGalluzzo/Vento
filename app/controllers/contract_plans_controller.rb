class ContractPlansController < ApplicationController
  def new
    @contract_plan = ContractPlan.new
  end

  def create
    @contract_plan = ContractPlan.new(params[:contract_plan])
    if @contract_plan.save
      flash[:success] = "ContractPlan successfully created"
      redirect_to @contract_plan
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end
end
