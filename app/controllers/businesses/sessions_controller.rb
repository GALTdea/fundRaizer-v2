# frozen_string_literal: true

class Businesses::SessionsController < Devise::SessionsController
  # include Accessible
  # skip_before_action :check_user, only: :destroy
  # after_action :redirect_instructions, only: :destroy

  
  # skip_before_action :verify_signed_out_user

  # after_action :after_sign_out_path_for, only: :destroy

  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

   # DELETE /resource/sign_out
    def destroy
      signed_out = (Devise.sign_out_all_scopes ? sign_out : sign_out(resource_name))
    
      redirect_to root_path
      

      set_flash_message! :notice, :signed_out if signed_out

      yield if block_given?
      root_path
   end

   # def redirect_instructions
   #  redirect_to request.referrer
   # end


  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end

private 

   # Overwriting the sign_out redirect path method
  

  


  # def after_sign_out_path_for(resource_or_scope)
  #   if resource_or_scope == :business
  #     new_business_session_path
  #   elsif resource_or_scope == :org
  #     new_org_session_path
  #   else
  #     root_path
  #   end
  # end  


  def verify_signed_out_user
    if all_signed_out?
      set_flash_message! :notice, :already_signed_out

      respond_to_on_destroy
    end
  end
end
