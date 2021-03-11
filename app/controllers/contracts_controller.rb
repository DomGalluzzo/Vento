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
      redirect_to @contract
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  def show
    @contract = Contract.find(params[:id])
    @markers =[
      {
        lat: @contract.festival.latitude,
        lng: @contract.festival.longitude
      }]
      respond_to do |format|
        format.html
        format.pdf do
          render  pdf: "your-filename",
          template: "contracts/show.pdf.erb",
          locals: {:contract => @contract}
        end
      end  
  end

  def download_pdf
    send_file(
      "#{Rails.root}/app/assets/images/Policy2.pdf",
      filename: "Policy2.pdf",
      type: "application/pdf"
    )
  end

  private

  def contract_params
    params.require(:contract).permit(:festival_id, :total_cost)
  end
end
