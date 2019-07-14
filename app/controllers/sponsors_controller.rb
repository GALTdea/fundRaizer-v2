class SponsorsController < ApplicationController
  
  def index
  	@sponsors = Sponsor.all

  end

  def show
  	@sponsor = Sponsor.find(params[:id])
  end

  def new
  	@sponsor = Sponsor.new
  end

  def create
  	@sponsor = Sponsor.create(sponsor_params)
  	if @sponsor.save
  		redirect_to root_path
  	else
  		render "new"
  	end
  end

  def edit
  end

  def update
  end


  private


def sponsor_params
	params.require(:sponsor).permit(:company_name, 
									:business_type, 
									:about, 
									:address, 
									:city, 
									:region,
									:zip_code,
									:manager, 
									)
end



end

