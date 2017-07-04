class UsersController < ApplicationController

  def index
  	@users = User.all 
  end

  def edit
    @user = User.find(params[:id])
    respond_to do |format|
	    format.html
	    format.js
  	end
  end

  private

  def user_params
    params.require(:user).permit(:password)
  end
end