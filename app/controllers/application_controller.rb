class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  require 'business_sanitizer'
  require 'org_sanitizer'

end
