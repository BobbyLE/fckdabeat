class PagesController < ApplicationController
  def index
    if params[:tag]
      @posts = Post.tagged_with(params[:tag]).paginate(:page => params[:page], :per_page => 9)
    else
      @posts = Post.paginate(:page => params[:page], :per_page => 9)
    end
    
    @aboutus = Aboutu.find(1)
  end
end
