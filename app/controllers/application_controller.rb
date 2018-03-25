class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  require 'business_sanitizer'
  require 'org_sanitizer'


  protected


  def devise_parameter_sanitizer
    if resource_class == Business
      BusinessParameterSanitizer.new(Business, :business, params)
     elsif resource_class == Org
      Org::ParameterSanitizer.new(Org, :org, params)
    else
      super # Use the default one
    end
  end

end
