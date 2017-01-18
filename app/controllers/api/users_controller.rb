class Api::UsersController < ApplicationController
  def create
    @user
    if user_params[:demo]
      @user = User.generate_user
    else
      @user = User.new(user_params)
    end
    if @user.save
      login(@user)
      Bookshelf.create(user_id: @user.id, name: "read", protect: true)
      cr_shelf =
        Bookshelf.create(user_id: @user.id, name: "currently reading", protect: true)
      Bookshelf.create(user_id: @user.id, name: "to read", protect: true)

      if user_params[:demo]
        demoshelves = ["Horror", "Comedy"]
        demoshelves.each do |demo_name|
          demo_shelf = Bookshelf.create(user_id: @user.id, name: demo_name)
          Shelving.create(book_id: 1, bookshelf_id: demo_shelf.id)
          Shelving.create(book_id: 2, bookshelf_id: demo_shelf.id)
          Shelving.create(book_id: 3, bookshelf_id: demo_shelf.id)
        end
        Shelving.create(book_id: 4, bookshelf_id: cr_shelf.id)
        Shelving.create(book_id: 5, bookshelf_id: cr_shelf.id)
      end

      render :show
    else
      render json: @user.errors.full_messages, status: 422
    end
  end

  private
  def user_params
    params.require(:user).permit(:username, :password, :demo)
  end
end
