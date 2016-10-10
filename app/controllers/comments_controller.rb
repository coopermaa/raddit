class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @link = Link.find(params[:link_id])
    @comment = @link.comments.new(comment_params)
    @comment.owner = current_user
    
    if @comment.save
      redirect_to :back, notice: 'Comment was successfully created.'
    else
      redirect_to :back, alert: @comment.errors.full_messages.to_sentence
    end
  end
  
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to :back, notice: 'Comment was successfully destroyed.'
  end

  private
    def comment_params
      params.require(:comment).permit(:link_id, :body)
    end
end
