class MoviesController <ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
    @likes = Like.where(likeable_id: params[:id]).count
    @like = get_user_like
  end

  private

  def get_user_like
    if logged_in?
      Like.where(user_id: current_user.id, likeable_id: params[:id], likeable_type: "Movie").take
    end
  end
end