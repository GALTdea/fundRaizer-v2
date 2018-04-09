class EventsController < ApplicationController



  def index
    @events = Event.all
  end

  def show
     @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @business = Business.find(params[:business_id])
     # @event = current_org.events.build(event_params)
    @event = Event.create(event_params)
    @event.business_id = @business.id
    @event.org_id = 1 #current_org.id
    if @event.save
      redirect_to @business
    end
  end


  def edit
  end


private

  def event_params
    params.require(:event).permit(:business_id, :org_id, :name, :about, :date, :business_active , :number_of_guess, :org_active)
  end



end
