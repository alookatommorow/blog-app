class ReviewsController <ApplicationController
  def create
    @review = Review.new(review_params)
    if @review.save

    else

    end
    render_likes
  end

  def destroy
    Review.destroy(params[:id])
    render_likes
  end

  private

  def review_params
    params.require(:review).permit(:movie_id, :user_id)
  end

  def render_reviews
    render partial: "reviews", locals: { reviews: Review.all, num_reviews: Review.where(movie_id: review_params[:movie_id], user_id: review_params[:user_id]) }
  end
end