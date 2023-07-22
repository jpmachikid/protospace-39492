class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to prototype_path(@comment.prototype)
    else
      @prototype = Prototype.find(params[:id])
      @comments = @prototype.comments.includes(:user)
      render "prototypes/show", status: :unprocessable_entity
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:content,:user_id,:prototype_id).merge(user_id: current_user.id, prototype_id: params[:prototype_id])
  end
end
