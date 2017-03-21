class CommentsController < ApplicationController
 def create
  @post = ForumPost.find(params[:forum_post_id])
  @comment = @post.comments.create(params[:comment].permit(:comment))
  @comment.user_id= current_user.id if current_user
  @comment.save
  if @comment.save
    redirect_to forum_post_path(@post)
  else
    render 'new'
  end

 end
 def edit 
 @post = ForumPost.find(params[:forum_post_id])
  @comment=@post.comments.find(params[:id])
 end
 def update
   @post = ForumPost.find(params[:forum_post_id])
  @comment=@post.comments.find(params[:id])
  if @comment.update(params[:comment].permit(:comment))
    redirect_to post_path(@post)
  else
    render 'edit'
  end
 end

 def destroy
  @post = ForumPost.find(params[:forum_post_id])
  @comment=@post.comments.find(params[:id])
  @comment.destroy
  redirect_to post_path(@post)
 end

end
