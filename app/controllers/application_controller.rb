class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception

  require 'business_sanitizer'
  require 'org_sanitizer'

 

  

 

private

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
