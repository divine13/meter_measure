class SessionsController < ApplicationController

	def new

	end

	def create 
	  user = User.find_by(email: params[:session][:email])
	  if user && user.authenticate(params[:session][:password])
	  	sign_in(user)
	  	 to_my_json(user) 
	  else 
	  	my_json_error
	  end
	end

	def destroy 

	end

	private 

	def sessions_params
		params.require(:session).permit!
	end

end
