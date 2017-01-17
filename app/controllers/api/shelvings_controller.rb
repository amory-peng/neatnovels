class Api::ShelvingsController < ApplicationController
  def create
    current_bookshelf = Bookshelf.find_by(
      id: params[:bookshelf_id],
      user_id: current_user.id
    )

    @shelving = Shelving.new(
      bookshelf_id: current_bookshelf.id,
      book_id: params[:book_id]
    )

    if @shelving.save!
      #if bookshelf is protected, remove shelvings from current user's other protected bookshelves
      if current_bookshelf.protect
        shelvings = Shelving.includes(:bookshelf).where(book_id: params[:book_id])
        shelvings.each do |shelving|
          next if shelving.id == @shelving.id
          if current_user.id == shelving.bookshelf.user_id && shelving.bookshelf.protect
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
    @shelving = Shelving.find_by(
      book_id: params[:book_id],
      bookshelf_id: params[:bookshelf_id]
    )
    @shelving.destroy! if @shelving
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
