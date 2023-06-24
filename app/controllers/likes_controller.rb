class LikesController < ApplicationController
  def create
    @post = params[:post_id]
    @user = current_user
    @like = Like.new(author_id: @user.id, post_id: @post)

    if @like.save
      flash[:success] = 'You liked the post.'
    else
      flash.now[:error] = 'Error'
    end

    redirect_to user_posts_path(@user.id, @post)
  end
end
