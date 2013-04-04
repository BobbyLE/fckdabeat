class PostsController < ApplicationController
  before_filter :signed_in_user, only: [:new, :admin_index, :create, :edit, :destroy]
  before_filter :correct_user,   only: [:edit, :update, :destroy]
  
  def new
    @post = current_user.posts.build if signed_in?
  end
  
  def admin_index
    @user = User.find(current_user.id)
    @posts = Post.paginate(:page => params[:page], :per_page => 9)
    #User's posts
    #@posts = @user.posts.paginate(page: params[:page])
  end

  def create
    @post = current_user.posts.build(params[:post])
    if @post.save
      flash[:success] = "Post created!"
      redirect_to admin_posts_path
    else
      render 'new'
    end
  end
  
  def edit
    @post = Post.find(params[:id])
  end
  
  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(params[:post])
      flash[:success] = "Post updated"
      redirect_to admin_posts_path
    else
      render 'edit'
    end
  end
  
  def destroy
    @post.destroy
    Post.reset_pk_sequence
    redirect_to admin_posts_path
  end
  
  private

    def correct_user
      @post = current_user.posts.find_by_id(params[:id])
      redirect_to root_url if @post.nil?
    end
end