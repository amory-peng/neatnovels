class Api::ShelvingsController < ApplicationController
  def create
    bookshelf = Bookshelf.find_by(
      name: shelving_params[:name],
      user_id: current_user.id
    )
    @shelving = Shelving.new(
      bookshelf_id: bookshelf.id,
      book_id: params[:book_id]
    )
    if @shelving.save!
      render json: {}
    else
      render json: @shelving.errors.full_messages, status: 422
    end
  end

  def destroy
    p params
    if shelving_params[:action] == "ALL"
      @shelvings = current_user.shelvings.where(book_id: params[:book_id])
      @shelvings.each { |shelving| shelving.destroy! }
      render json: {}
    else
      @shelving = Shelving.find_by(
        book_id: params[:book_id],
        bookshelf_id: shelving_params[:id]
      )
      @shelving.destroy!
      render json: {}
    end
  end

  def shelving_params
    params.require(:bookshelf).permit(:name, :id, :action)
  end
end
