class HomeController < ApplicationController
  def index
  end

  def write
    newpost = Post.new
    newpost.title = params[:title]
    newpost.content = params[:content]
    newpost.save
    
    redirect_to '/list'
  end

  def list
    @posts = Post.all
  end
  
  def show
    @post = Post.find(params[:post_id])    
  end
  
  def edit
    @post = Post.find(params[:post_id]) 
  end
  
  def update
    @post = Post.find(params[:post_id]) 
    @post.title = params[:title]
    @post.content = params[:content]
    @post.save
    
    redirect_to '/list'
  end
  
  def destroy
    @post = Post.find(params[:post_id]) 
    @post.destroy
    
    redirect_to '/list'
  end
end
