class PublicInjuriesController < ApplicationController
  def show
    @public_injury = PublicInjury.find(params[:id])
    @contract_plan = @public_injury.contract_plan.new
  end
end
