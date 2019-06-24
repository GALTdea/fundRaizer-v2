module Accessible
  extend ActiveSupport::Concern
  included do
    before_action :check_user
  end


  protected
  
  def check_user
    if current_org
      flash.clear
      # if you have rails_admin. You can redirect anywhere really
      # redirect_to(root_path) && return
      # redirect_to(rails_admin.dashboard_path) && return
      # redirect_to(authenticated_org_root_path) && return
      redirect_to(root_path)
    elsif current_business
      flash.clear
      # The authenticated root path can be defined in your routes.rb in: devise_scope :user do...
      # redirect_to(root_path) && return
      # redirect_to(authenticated_business_root_path) && return
      redirect_to(root_path)
     
    end
      
  end
end

 