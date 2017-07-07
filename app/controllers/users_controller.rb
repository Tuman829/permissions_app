class UsersController < ApplicationController

  def index
  	@users = User.all 
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
  	@user = User.find(params[:id])
  	@user.password = user_params[:password]
  	if  @user.save!  		
  		flash[:success] = "Password Updated"
  		redirect_to root_path
  	else
  		redirect_to edit_path(@user)
  	end
  end

  private

  def user_params
    params.require(:user).permit(:password)

  end
end