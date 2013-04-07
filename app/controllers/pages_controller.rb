class PagesController < ApplicationController
  def index
    @posts = Post.paginate(:page => params[:page], :per_page => 9)
  end
end
