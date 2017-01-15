class Api::UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    if @user.save
      login(@user)
      Bookshelf.create(user_id: @user.id, name: "read", protect: true)
      Bookshelf.create(user_id: @user.id, name: "currently reading", protect: true)
      Bookshelf.create(user_id: @user.id, name: "to read", protect: true)
      render :show
    else
      render json: @user.errors.full_messages, status: 422
    end
  end

  private
  def user_params
    params.require(:user).permit(:username, :password)
  end
end
