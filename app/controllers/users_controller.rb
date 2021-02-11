class UsersController < ApplicationController
  skip_before_action :authorize_request, only: :create
  
  # POST /signup
  def create
    user = User.create!(user_params)
    auth_token = AuthenticateUser.new(user.username, user.password).call
    response = { message: Message.account_created, auth_token: auth_token }
    json_response(response, :created)
  end

  def show
    user = User.find(params[:id])
    json_response(user: user)
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end
end
