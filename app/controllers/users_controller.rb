class UsersController < ApplicationController

  def create 
  	@user = User.new(user_params)
  	if @user.save
  		to_my_json(@user) #this is suppose to give me authentication key
  	else 
  		my_json_error
  	end
  end

  def new
  	@user = User.new
  end

  def show
  	@user = User.find(params[:id])
     to_my_json(@user)
  end 

  def me #probaly must hash the password first but later relax
    @user = User.find(params[:email][:password])
    to_my_json(@user)
  end

  def user_params
  	params.require(:user).permit!
  end

end