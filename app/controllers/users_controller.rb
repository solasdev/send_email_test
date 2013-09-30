class UsersController < ApplicationController

  def new_address
    @user = User.new
    if params[:address].blank?
      @message = "Address can't be blank"
    else
      @message = @user.send_user_details(params)
    end
    @message.to_json
  end

  def sample_api_call(params)
    @return_text = "The address sent was: " + params[:address]
  end

end
