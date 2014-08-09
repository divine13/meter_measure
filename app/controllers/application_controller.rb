class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.


  def to_my_json(user) #refactor to be able to be used with meter too
   render status: :ok, 
  	json: {
  	  success: true,
  	  info: "user",
  	  data: {
  	  	user: user
  	  }
  	}
  end

  def my_json_error
  	render status: :ok,
  	json: {
  		success: "false",
  		info: "Error creating user",
  		data: {
  			error: "there was a problem creating the user"
  		}
  	}
  end
end
