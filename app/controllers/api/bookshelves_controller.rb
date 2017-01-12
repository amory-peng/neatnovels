class Api::BookshelvesController < ApplicationController
  def index
    @bookshelves = Bookshelf.includes(:books).all.where(user_id: current_user.id)
  end

  def show
    @bookshelf = Bookshelf.includes(:books).where(user_id: current_user.id).find_by(id: params[:id])
    p @bookshelf
    if @bookshelf.nil?
      render json: ["You don't belong here."], status: 422
    else
      render :show
    end
  end

  def update
    @bookshelf = Bookshelf.find_by(params[:id])
  end

  def create
    @bookshelf = Bookshelf.new(
      user_id: current_user.id,
      name: bookshelf_params[:name]
    )
    if @bookshelf.save
      render :show
    else
      render json: @bookshelf.errors.full_messages, status: 422
    end
  end

  def destroy
    @bookshelf = Bookshelf.find_by(id: params[:id])
    @bookshelf.destroy!
    render :show
  end

  def bookshelf_params
    params.require(:shelf).permit(:name)
  end
end
