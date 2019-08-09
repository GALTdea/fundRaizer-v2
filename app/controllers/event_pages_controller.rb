class EventPagesController < ApplicationController
  # layout "event_page"

  def index
    @event_pages = EventPage.all
  end

  def show
  	@page = EventPage.find(params[:id])
    @organizer = @page.org.manager
  end

  # def edit
  # 	@event_page = EventPage.find(params[:id])
  # end

  def update
  	@event_page = EventPage.find(params[:id])
  	if @event_page.update_attributes(event_page_params)

      DealInviteMailer.send_deal_email(@org).deliver

  		redirect_to event_page_path(@event_page)
  	end
  end



private
	def event_page_params
		params.require(:event_page).permit(:event_name,
                                       :address,
                                       :date_start,
                                       :date_end,
                                       :about,
                                       :main_image,
                                       :thumb_image,
                                      )
	end
end
