class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception

  require 'business_sanitizer'
  require 'org_sanitizer'

 
  def new
    @waitlist = Waitlist.new
  end

  def create
    @waitlist = Waitlist.create(waitlist_params)

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


 # Overwriting the sign_out redirect path method

  def after_sign_out_path_for(resource_or_scope)
    if resource_or_scope == :business
      root_path
    elsif resource_or_scope == :org
      root_path
    else
      pages_ourcause_path
    end
  end



  def devise_parameter_sanitizer
    if resource_class == Business
       Business::ParameterSanitizer.new(Business, :business, params)
     elsif resource_class == Org
       Org::ParameterSanitizer.new(Org, :org, params)
    else
      super # Use the default one
    end
  end




end
