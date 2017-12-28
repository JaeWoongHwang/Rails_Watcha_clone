class AdminController < ApplicationController

  def index
    @users = User.all
  end

  def posts
    @posts = Post.all
  end

  def posts_destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to :back, notice: "삭제가 완료 되었습니다."
  end

  def movies
    @movies = Movie.all
  end

  def reviews
    @reviews = Review.all
  end

  def reviews_destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to :back, notice: "삭제가 완료 되었습니다."
  end

  def to_manager
    @user = User.find(params[:id])
    @user.update(
      role: "manager"
    )
    flash[:notice] = "매니저로 승급되었습니다."
    redirect_to :back
  end

  def to_user
    @user = User.find(params[:id])
    @user.update(
      role: "user"
    )
    flash[:notice] = "유저로 강등되었습니다."
    redirect_to :back
  end
end
