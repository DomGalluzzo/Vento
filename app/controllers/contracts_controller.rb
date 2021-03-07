class ContractsController < ApplicationController
  def new
    @festival = Festival.find(params[:festival_id])
    @contract = Contract.new
  end

  def create
    @contract = Contract.new(params[:id])
    @festival = Festival.find(params[:festival_id])
    @contract.festival = @festival
    if @contract.save
      flash[:success] = "Contract successfully created"
      redirect_to new_contract_contract_plan_path(@contract.id)
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  def show
    @contract = Contract.find(params[:id])
  end

  private

  def contract_params
    params.require(:contract).permit(:festival_id, :total_cost)
  end
end
