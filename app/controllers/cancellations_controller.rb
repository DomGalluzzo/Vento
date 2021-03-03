class CancellationsController < ApplicationController
  def show
    @cancellation = Cancellation.find(params[:id])
    @contract_plan = @cancellation.plannable.new
  end
end
