class AuthenticationController < ApplicationController
  skip_before_action :authorize_request, only: :create

  def create
    auth_token = AuthenticateUser.new(auth_params[:username], auth_params[:password]).call
    json_response(auth_token: auth_token)
  end

  private

  def auth_params
    params.require(:user).permit(:username, :password)
  end
end
