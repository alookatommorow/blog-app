class LikesController <ApplicationController
  def create
    @like = Like.new(like_params)
    @like.save
    redirect_to movies_path
  end

  def destroy
    Like.destroy(params[:id])
    redirect_to movies_path
  end

  def like_params
    params.require(:like).permit(:id, :likeable_id, :likeable_type, :user_id)
  end
end