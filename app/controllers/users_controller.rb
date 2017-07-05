class UsersController < ApplicationController

  def index
  	@users = User.all 
  end

  def edit
    @user = User.find(params[:id])
   end

  def update
  	@user = User.find(params[:id])
  	#@user.update(user_params)
  	@user.password = user_params[:password]
  	
  	#@user.password_confirmation = params[:password]
  	if  @user.save! #@user.authenticate(params[:password])
  		flash[:success] = "password updated"
  		redirect_to root_path
  	else
  		redirect_to edit_path(@user)
  	end
  #	if	@user.update(user_params)
   # 	redirect_to root_path
  	#else
    #	render 'edit'
  	#end
  	#@user.save!
  	#redirect_to root_path


  end

  private

  def user_params
    params.require(:user).permit(:password)
  end
end