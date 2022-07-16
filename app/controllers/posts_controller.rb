class PostsController < ApplicationController
  POSTS_PER_PAGE = 2
  def index
    @page = params.fetch(:page, 0).to_i
    @page = 0 if @page.negative? || @page > (Post.count / POSTS_PER_PAGE)
    @user = User.find(params[:user_id])
    @posts = @user.posts.offset(@page * POSTS_PER_PAGE).limit(POSTS_PER_PAGE)
  end

  def show
    @post = Post.find(params[:id])
  end

  def comment
    @post = Post.find(params[:id])
    p params
    @comment = Comment.new(user: current_user, post: @post, text: params[:text])
    @comment.save
    redirect_to user_posts_path(current_user)
  end
  
end
