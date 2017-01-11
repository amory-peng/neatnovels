class Api::BooksController < ApplicationController
  def index
    @books = Book.all.order(:title)
  end

  def show
    p params
    @book = Book.find_by(id: params[:id])
    if @book
      render :show
    else
      render json: "Book not found", status: 422
    end
  end
end
