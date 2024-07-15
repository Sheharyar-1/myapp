class PostsController < ApplicationController
 
  respond_to :html, :xml
  def index
    @posts =Post.all
    
  end

  def show 
  
    @post =Post.find(params[:id])
    
  end

  def new
    @post=Post.new
  end

  def create
    @post=Post.new(post_params)

    if @post.save
      redirect_to @post
    else
      flash[:danger] = "Could not create a post."
      # Redirect to the new post form
      redirect_to new_post_path
    end
  end

  def edit
    @post=Post.find(params[:id])
    
  end

  def update
    @post=Post.find(params[:id])
    if @post.update(post_params)
      redirect_to @post
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    
    @post = Post.find(params[:id])
    @post.destroy
    flash[:notice] = "You have successfully deleted the post."
    redirect_to root_path, status: :see_other
  end
  private
    def post_params
      params.require(:post).permit(:title, :body)
    end
end
