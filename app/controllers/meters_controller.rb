class MetersController < ApplicationController

  skip_before_action :verify_authenticity_token


  def index
  	@meters = User.find_by_remember_token(params[:token]).meters.build if signed_in?(params[:token])
  end

  def create 
  	@meter =  User.find_by_remember_token(params[:token]).meters.new(meter_params)
  	if @meter.save
  		@meter 
  	else 
  		render status: :unprocessable_entity, 
  		    json: {
  		    	success: false, 
  		    	info: @meter.errors,
  		    	data:  {}
  		    }
  	end
  end 

  def get_newer
    #suppose to return all that the user has followed but not that he has done
    @newer =  User.find_by_remember_token(params[:token]).meters.where("'#{params[:phone_id]}' != phone_id")
  end 

  def get_last #It would be much more efficient if i only got the created_at 
    if Meter.all.count > 0
       @last_meter = Meter.last
    else 
      render status: :ok,   # too much fat 
          json: {
            success: false, 
            info: 'empty',
            data:  {meter: {
              made_at: '-4'
              }}
          }
    end
  end 

  def check 
    @check = User.find_by_remember_token(params[:token]).meters.where("'#{params[:phone_id]}' != phone_id").count
     #if 0 then this means that nothing was uploaded by this another besides this one 
          render status: :ok,  
         text: @check
          
  end 

 private 
def meter_params
 params.require(:meter).permit!
 end
end