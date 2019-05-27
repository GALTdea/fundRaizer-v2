class BusinessesController < ApplicationController
  def index
    @businesses = Business.paginate(:page => params[:page], per_page: 7)
  end


  def show
    @business = Business.friendly.find(params[:id])
    @events = @business.events
    @event = Event.new
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
