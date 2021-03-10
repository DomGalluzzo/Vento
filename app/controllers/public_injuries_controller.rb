class PublicInjuriesController < ApplicationController
  def new
    @public_injury = PublicInjury.new
    @contract = Contract.find(params[:contract_id])
  end

  def create
    @public_injury = PublicInjury.new(public_injury_params)
    @contract = Contract.find(params[:contract_id])

    if @public_injury.save
      @contract_plan = ContractPlan.new
      @contract_plan.contract = @contract
      @contract_plan.plannable = @public_injury
      @contract_plan.save!
      @contract.price_sum
      flash[:success] = "PublicInjury successfully created"
      redirect_to @contract
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  def show
    @public_injury = PublicInjury.find(params[:id])
    @contract_plan = @public_injury.contract_plan.new
  end

  private

  def public_injury_params
    params.require(:public_injury).permit(:liability, :daily, :total, :usa, :dangerous, :sub)
  end
end
