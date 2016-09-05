class MoviesController <ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
    @likes = Like.where(likeable_id: params[:id]).count
  end
end