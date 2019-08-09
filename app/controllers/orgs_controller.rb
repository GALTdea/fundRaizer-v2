class OrgsController < ApplicationController  
   before_action :authenticate_org!

   before_action :account_owner
   
  def index
  	@orgs = Org.all
  end

  def show
    @org = Org.friendly.find(params[:id])
    @events = @org.events
    # @event_pages = @org.events.event_page
    @propsal = Proposal.new
  end
  
  
  private
  
  def admin?
    self.admin == true
  end
  
  def account_owner
    if current_org != Org.find(params[:id])
      redirect_to root_path, notice: "Wrong profile page"
    end
  end

end
