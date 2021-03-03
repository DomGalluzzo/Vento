class ContractsController < ApplicationController
  def new
    @contract = Contract.new
  end

  def create
    @contract = Contract.new(params[:contract])
    if @contract.save
      flash[:success] = "Contract successfully created"
      redirect_to @contract
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end
end
