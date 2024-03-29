class PostsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_post, only: %i[edit update destroy]
  before_action :set_q, only: [:index, :show, :search]

  PER_PAGE = 9

  def index
    if params[:q].present?
      @posts = @q.result.page(params[:page]).per(PER_PAGE)
      @count = @posts.total_count
    else
      params[:q] = { sorts: "created_at desc" }
      @posts = Post.order(:created_at).page(params[:page]).per(PER_PAGE)
    end
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.create(post_params)
    if @post.save
      redirect_to @post, notice: "投稿しました!!"
    else
      flash.now[:alert] = "投稿に失敗しました"
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @comments = @post.comments.includes(:user, :post).order(created_at: :desc)
  end

  def edit; end

  def update
    @post.update!(post_params)
    redirect_to @post
  end

  def destroy
    @post.destroy!
    redirect_to @post, alert: "削除しました"
  end

  def search
    @results = @q.result
  end

  private

  def post_params
    params.require(:post).permit(:content, :name, :URL, :TEL, :address, :ward_id, :img, :user_id)
  end

  def set_post
    @post = current_user.posts.find(params[:id])
  end

  def set_q
    @q = Post.ransack(params[:q])
  end
end
