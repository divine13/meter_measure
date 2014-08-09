 class ApplicationController < ActionController::Base

  include SessionsHelper

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

  def my_json_error #make this a bit more generic mje(msg)
   render status: :ok,
   json: {
     success: "false",
     info: "Error creuser",
     data: {
       error: "double check your input details please"
     }
   }
  end
 end