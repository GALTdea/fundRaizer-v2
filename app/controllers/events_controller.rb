class EventsController < ApplicationController
  def index
    if current_business
      @events = Business.friendly.find(params[:business_id]).events
    elsif current_org
       @events = Org.friendly.find(params[:org_id]).events
     end
  end

  def show
     @event = Event.find_by(slug: params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @business = Business.friendly.find(params[:business_id])
    #@event = current_org.events.build(event_params)
    @event = Event.create(event_params)
    @event.business_id = @business.id
    @event.org_id = current_org.id
    if @event.save
      redirect_to @business
    end
  end


  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if  @event.update_attributes(event_params)
      flash[:success] = "Event Was accepted"
      redirect_to current_org
    end

  end



# business confirm event from business/page upon acceptance, event_page is generated, some data was added to fields to avoid nill fields
# after confirmation, org will have to update event_page to provide the proper information.
  def confirmation
    @event = Event.find(params[:id])
    @org = @event.org
    if @event.update_attributes(event_params)
      # place a conditional statment, if @org has event_page, don't create a new event_page
        EventPage.create(event_id: @event.id,
                         org_id: @org.id,
                         event_name: 'Name of the event',
                         address: '123 Main ST, Chula Vista, CA',
                         date_start: '01/01/01',
                         date_end: '01/02/03',
                         about: '..'
                         )
        

        flash[:success] = "Event Was accepted"
        if current_business
         redirect_to business_events_path(current_business)
        else
          redirect_to org_path(current_org)
        end
    end
  end



private

  def event_params
    params.require(:event).permit(:business_id, :org_id, :name, :about, :date, :business_active , :number_of_guess, :org_active)
  end



end
