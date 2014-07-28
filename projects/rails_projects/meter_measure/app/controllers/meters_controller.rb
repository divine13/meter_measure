class MetersController < ApplicationController

  skip_before_action :verify_authenticity_token

  def index
  	@meters = Meter.all
  end

  def create 
  	@meter = Meter.new(meter_params)
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
    @newer = Meter.where("'#{params[:phone_id]}' != phone_id")
    @newer
  end 

  def get_last #It would be much more efficient if i only got the created_at 
    if Meter.all.count > 0
       @last_meter = Meter.last
      @last_meter  #not good lets first go stable and then optimize
    else 
      render status: :ok,   # too much fat 
          json: {
            success: false, 
            info: "empty",
            data:  {meter: {
              made_at: "-49494980099"
              }}
          }
    end
  end 

  def check 
    @check = Meter.where("'#{params[:phone_id]}' != phone_id").count
     #if 0 then this means that nothing was uploaded by this another besides this one 
          render status: :ok,   # too much fat 
         text: @check
          
  end 

 private 
def meter_params
 params.require(:meter).permit!
 end
end