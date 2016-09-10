class ReviewsController <ApplicationController

  def create
    Review.create(review_params)
    @movie = Movie.includes(:reviews).find(review_params[:movie_id])
    render_reviews
  end

  private

  def review_params
    params.require(:review).permit(:movie_id, :user_id, :review)
  end

  def render_reviews
    render partial: "reviews", locals: { reviews: @movie.reviews, movie: @movie }
  end
end