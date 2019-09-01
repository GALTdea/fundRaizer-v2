class UsersController < ApplicationController
  
  def index
  	@user = User.all
  end

  def show
  	@user = User.find(params[:id])
    @campaings = @user.campaign_pages
  end

  

  

  def edit
  end


private


  def user_params 
		params.require(:user_params).permit(:email, :name, :admin)
  end 



end
