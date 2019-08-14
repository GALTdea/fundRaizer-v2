class WaitlistsController < ApplicationController
  def index
  end

  def show
  end

  def new
  	@waitlist = Waitlist.new
  end

  def create
    @waitlist = Waitlist.new(waitlist_params)

    if @waitlist.save
    	redirect_to root_path
	    # Tell the ProspectMailer to send an email to us
	    # WaitlistMailer.waitlist_email(@waitlist).deliver
 	end
  end


  private


  def waitlist_params 
		params.require(:waitlist).permit(:email, :name, :sponsor, :supporter)
  end 

end

   
 
