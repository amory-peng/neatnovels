class Api::BooksController < ApplicationController
  def index
    @count = params[:lastId].to_i
    @books = Book.all.order('TITLE ASC').limit(12).offset(params[:lastId])
  end

  def show
    @book = Book.includes(:bookshelves).find_by(id: params[:id])
    if @book
      render :show
    else
      render json: ["Book not found"], status: 422
    end
  end

  def book_params
    params.require(:book)
    .permit(:title, :author, :year, :description, :image_url)
  end
end
