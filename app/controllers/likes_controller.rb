class LikesController <ApplicationController
  def create
    @like = Like.new(like_params)
    @like.save
    render_like_button
  end

  def destroy
    Like.destroy(params[:id])
    render_like_button
  end

  private

  def like_params
    params.require(:like).permit(:likeable_id, :likeable_type, :user_id)
  end

  def render_like_button
    render partial: "like_button", locals: { movie: Movie.find(like_params[:likeable_id]), like: @like }
  end
end