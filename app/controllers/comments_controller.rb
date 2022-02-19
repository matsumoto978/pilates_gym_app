class CommentsController < ApplicationController
  before_action :authenticate_user!, { only: [:create, :destroy] }
  before_action :set_beans, { only: [:destroy] }

  def create
    @comment = @post.comments.build(comment_params)
    @comment.user_id = current_user.id
    @comment.save
    redirect_to @post, notice: "コメントを投稿しました!"
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to @post, notice: "コメントを削除しました!"
  end

  private
  def set_comments
    @post = Post.find(params[:post_id])
  end
  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id)
  end

end
