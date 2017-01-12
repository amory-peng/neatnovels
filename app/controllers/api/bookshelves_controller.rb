class Api::BookshelvesController < ApplicationController
  def index
    p current_user.id
    @bookshelves = Bookshelf.includes(:books).all.where(user_id: current_user.id)
  end

  def show
    @bookshelf = Bookshelf.find_by(params[:id])
  end

  def update
    @bookshelf = Bookshelf.find_by(params[:id])
  end

  def create
    @bookshelf = Bookshelf.new
  end

  def destroy
  end

  def bookshelf_params
    params.require(:bookshelf).permit(:name)
  end
end
