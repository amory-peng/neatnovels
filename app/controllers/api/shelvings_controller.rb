class Api::ShelvingsController < ApplicationController
  def create
    sleep 1
    bookshelf = Bookshelf.find_by(
      id: params[:bookshelf_id],
      user_id: current_user.id
    )

    @shelving = Shelving.new(
      bookshelf_id: bookshelf.id,
      book_id: params[:book_id]
    )

    if @shelving.save!
      #if bookshelf is protected, remove shelvings from other protected bookshelves
      if bookshelf.protect
        shelvings = Shelving.where(book_id: params[:book_id])
        shelvings.each do |shelving|
          if shelving.bookshelf.protect && shelving.id != @shelving.id
            shelving.destroy!
          end
        end
      end
      render json: {}
    else
      render json: @shelving.errors.full_messages, status: 422
    end
  end

  def destroy
    sleep 1
    @shelving = Shelving.find_by(
      book_id: params[:book_id],
      bookshelf_id: params[:bookshelf_id]
    )
    @shelving.destroy!
    render json: {}
  end

  def destroy_all
    @shelvings = current_user.shelvings.where(book_id: params[:book_id])
    @shelvings.each { |shelving| shelving.destroy! }
    render json: {}
  end

  def shelving_params
    params.require(:bookshelf).permit(:name, :id, :action)
  end
end
