class CommentsController < ApplicationController

  load_and_authorize_resource
  before_action :authenticate_user!, only: [:new, :create, :edit, :update]
  
  def create
    @comment = Comment.create(comment_params)
    @comment.user_id = current_user.id
    @comment.save
    redirect_to :back
  end

  def destroy
    comment = Comment.find(params[:id])
    comment.destroy
    redirect_to :back
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :user_id, :track_id)
  end
end