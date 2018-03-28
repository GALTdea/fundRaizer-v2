class BusinessesController < ApplicationController
  def index
    @businesses = Business.paginate(:page => params[:page], per_page: 1)
  end


  # def show
  #   @business = Business.find((params[:id])
  # end


  def show
    @business = Business.find((params[:id]))
  end



private

   def bus_params
     params.require(:business).permit(:name,
                                      :email,
                                      :phone,
                                      :manager,
                                      :bus_type,
                                      :address_1,
                                      :address_2,
                                      :city,
                                      :region,
                                      :zip_code,
                                      :page,
                                      :main_image,
                                      :thumb_image
                                    )
   end



end
