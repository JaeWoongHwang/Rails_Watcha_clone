class MoviesController < ApplicationController
  before_action :back_up, except: [:index, :show, :review]

  def index
    @movies = Movie.all
  end

  def show
    @movies = Movie.find(params[:id])
  end

  def new
  end

  def create
    Movie.create(
      title: params[:title],
      poster: params[:poster],
      genre: params[:genre],
      nation: params[:nation],
      director: params[:director]
    )
    redirect_to root_path
  end

  def review
    Review.create(
      rating: params[:rating],
      comment: params[:comment],
      user_id: current_user.id,
      movie_id: params[:id]
    )
    redirect_to :back
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
