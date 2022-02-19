class PostsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_post, only: %i[edit update destroy]

  def index
    @posts = Post.includes(:user, :likes, :comments).order(created_at: :desc)
  end

  def new
    @post = Post.new
  end

  def create
    post = current_user.posts.create!(post_params)
    redirect_to post
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @comments = @post.comments.includes(:user, :post).order(created_at: :desc)
  end

  def edit
  end

  def update
    @post.update!(post_params)
    redirect_to @post
  end

  def destroy
    @post.destroy!
    redirect_to @post
  end

  private

  def post_params
    params.require(:post).permit(:content, :img)
  end

  def set_post
    @post = current_user.posts.find(params[:id])
  end
end
