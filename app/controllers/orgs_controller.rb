class OrgsController < ApplicationController
  
  def index
  	@orgs = Org.all
  end

  def show
  	@org = Org.friendly.find(params[:id])
  	@events = @org.events
  	# @event_pages = @org.events.event_page

    @propsal = Proposal.new
  end


  #  def show
  # 	@org = Org.find(params[:id])
  # 	@events = @org.events
  # 	@event_pages = @org.event_pages
  # end




end
