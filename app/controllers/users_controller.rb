class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
  end

  def post
    @user = User.find_by(id: params[:id])
    @post = Post.where(user_id: @user.id).page(params[:page]).per(PER_PAGE)
  end
end
