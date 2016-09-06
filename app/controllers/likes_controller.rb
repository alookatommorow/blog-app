class LikesController <ApplicationController
  def create
    @like = Like.new(like_params)
    @like.save
    @likeable = get_likeable
    render_likes
  end

  def destroy
    Like.destroy(params[:id])
    @likeable = get_likeable
    render_likes
  end

  private

  def get_likeable
    like_params[:likeable_type].constantize.find(like_params[:likeable_id])
  end

  def get_user_like
    if logged_in?
      Like.where(user_id: current_user.id, likeable_id: params[:id], likeable_type: "Movie").take
    end
  end

  def like_params
    params.require(:like).permit(:likeable_id, :likeable_type, :user_id)
  end

  def render_likes
    render json: {
      button: render_to_string('_like_button.html.erb',
        layout: false,
        locals: {
          likeable: @likeable,
          like: @like
        }
      ),
      likes: render_to_string('_likes.html.erb',
        layout: false,
        locals: {
          likes:  @likeable.likes.length
        }
      ),
    }
    # render partial: "like_button", locals: { movie: Movie.find(like_params[:likeable_id]), like: @like }
  end
end