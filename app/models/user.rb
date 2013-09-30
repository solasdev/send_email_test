require 'uri'

class User < ActiveRecord::Base

  def send_user_details(params)

    data = params.to_json
    #response = HTTPClient.new
    #message = response.put("http://0.0.0.0:5000/users/sample_api_call", data).content

    @user_controller = UsersController.new
    @user_controller.sample_api_call(params)

  end

end
