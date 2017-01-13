class Api::ShelvingsController < ApplicationController
  def create
    bookshelf = Bookshelf.find_by(
      name: shelving_params[:name],
      user_id: current_user.id
    )
    @shelving = Shelving.new(bookshelf_id: bookshelf.id, book_id: params[:book_id])
    if @shelving.save!
      render json: {}
    else
      render json: @shelving.errors.full_messages, status: 422
    end
  end

  def destroy
    @shelving = Shelving.find_by(book_id: params[:book_id], bookshelf_id: params[:id])
    @shelving.destroy!
    render json: {}
  end

  def shelving_params
    params.require(:bookshelf).permit(:name)
  end
end
