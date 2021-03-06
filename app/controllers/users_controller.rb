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

    puts user_params
    @user = User.find_by_email(user_params[:email])
    user_password =  user_params[:password]
    if @user.password == user_password && @user.nil? != true
      to_my_json(@user)
    else
      my_json_error
      end

  end

  def user_params
  	params.require(:user).permit!
  end

end