class MoviesController <ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.includes(:reviews).find(params[:id])
    @like = get_user_like
  end

  private

  def get_user_like
    if logged_in?
      @movie.likes.where(user_id: current_user.id).take
    end
  end
end