class Api::SessionsController < ApplicationController
  def create
    @user = User.find_by_credentials(
      session_params[:username],
      session_params[:password]
    )
    if @user
      login(@user)
      render "api/users/show"
    else
      render json: ["Invalid credentials"], status: 422
    end
  end

  def destroy
    logout
    render json: {}
  end

  private
  def session_params
    params.require(:user).permit(:username, :password)
  end
end
