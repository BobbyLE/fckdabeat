class PostsController < ApplicationController
  before_filter :signed_in_user, only: [:new, :admin_index, :create, :destroy]
  
  def new
    @post = current_user.posts.build if signed_in?
  end
  def admin_index
    @user = User.find(current_user.id)
    @posts = @user.posts.paginate(page: params[:page])
  end

  def create
    @post = current_user.posts.build(params[:post])
    if @post.save
      flash[:success] = "Post created!"
      redirect_to posts_path
    else
      render 'new'
    end
  end

  def destroy
  end
  
end