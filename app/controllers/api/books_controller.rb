class Api::BooksController < ApplicationController
  def index
    @count = params[:lastId].to_i
    @books = Book.all.order('TITLE ASC').limit(12).offset(params[:lastId])
  end

  def show
    @book = Book.includes(:bookshelves, :comments).find_by(id: params[:id])
    if @book
      render :show
    else
      render json: ["Book not found"], status: 422
    end
  end

  def search
    @books = Book.all
      .where("upper(title) LIKE upper(?) or upper(author) LIKE upper(?)", "%#{params[:query]}%", "%#{params[:query]}%")
      .order('AUTHOR ASC')
      .limit(16)
    render :search
  end

  def book_params
    params.require(:book)
    .permit(:title, :author, :year, :description, :image_url)
  end
end
