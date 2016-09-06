class LikesController <ApplicationController
  def create
    @like = Like.new(like_params)
    @like.save
    render_likes
  end

  def destroy
    Like.destroy(params[:id])
    render_likes
  end

  private

  def likeable_class
    like_params[:likeable_type].constantize
  end

  def like_params
    params.require(:like).permit(:likeable_id, :likeable_type, :user_id)
  end

  def render_likes
    render json: {
      button: render_to_string('_like_button.html.erb',
        layout: false,
        locals: {
          likeable: likeable_class.find(like_params[:likeable_id]),
          like: @like
        }
      ),
      likes: render_to_string('_likes.html.erb',
        layout: false,
        locals: {
          likes:  Like.where(likeable_id: like_params[:likeable_id]).count
        }
      ),
    }
    # render partial: "like_button", locals: { movie: Movie.find(like_params[:likeable_id]), like: @like }
  end
end