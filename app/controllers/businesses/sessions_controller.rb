# frozen_string_literal: true

class Businesses::SessionsController < Devise::SessionsController
  include Accessible
  skip_before_action :check_user, only: :destroy
  

  
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

   

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end

private 

   # Overwriting the sign_out redirect path method
  

  



  def verify_signed_out_user
    if all_signed_out?
      set_flash_message! :notice, :already_signed_out

      respond_to_on_destroy
    end
  end
end
