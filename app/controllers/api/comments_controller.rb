class Api::CommentsController < ApplicationController
  def create
    @comment = Comment.new(
      user_id: current_user.id,
      book_id: params[:book_id],
      body: comment_params[:body]
    )
    if @comment.save
      render :show
    else
      render json: @comment.errors.full_messages, status: 422
    end
  end

  def index
    @comments = Comment.includes(:user).where(book_id: params[:book_id])
                       .order(created_at: :desc).limit(5)

  end

  def comment_params
    params.require(:comment).permit(:body)
  end
end
