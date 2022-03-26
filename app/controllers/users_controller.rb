class UsersController < ApplicationController
  before_action :set_user, { only: [:index, :show] }
  PER_PAGE = 9

  def index
    @users = User.where.not(id: current_user.id).page(params[:page]).per(5).order("created_at DESC")
  end

  def show
    @posts = Post.where(user_id: @user.id)
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
