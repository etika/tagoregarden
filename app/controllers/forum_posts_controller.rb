class ForumPostsController < ApplicationController
  before_action :find_forum_post,only: [:show,:edit, :update,:destroy]
  before_action :authenticate_user!, except: [:index,:show]
  
  def index
    @forum_posts = ForumPost.all.order("created_at DESC")
  end

  def show
  end
  def new
    @forum_post =  current_user.forum_posts.build
    # Post.new

  end

  def create
    @forum_post = current_user.forum_posts.build( forum_post_params)
    if @forum_post.save
      redirect_to @forum_post
    else
      render 'new'
    end
  end



  def edit

  end

  def update
    if @forum_post.update(forum_post_params)
      redirect_to @forum_post
    else
      render 'edit'
    end
  end

  def destroy
   @forum_post.destroy
   respond_to do |format|
      format.html { redirect_to forum_posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end 
 
private

  def find_forum_post
    @forum_post = ForumPost.find(params[:id])
  end

  def forum_post_params
    params.require(:forum_post).permit(:title,:content)
  end
end
