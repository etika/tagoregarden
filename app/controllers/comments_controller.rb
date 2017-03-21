class CommentsController < ApplicationController
 def create
  @forum_post = ForumPost.find(params[:forum_post_id])
  @comment = @forum_post.comments.create(params[:comment].permit(:comment))
  @comment.user_id= current_user.id if current_user
  @comment.save
  if @comment.save
    redirect_to forum_post_path(@forum_post)
  else
    render 'new'
  end

 end
 def edit 
 @forum_post = ForumPost.find(params[:forum_post_id])
  @comment=@forum_post.comments.find(params[:id])
 end
 def update
   @forum_post = ForumPost.find(params[:forum_post_id])
  @comment=@forum_post.comments.find(params[:id])
  if @comment.update(params[:comment].permit(:comment))
    redirect_to forum_post_path(@forum_post)
  else
    render 'edit'
  end
 end

 def destroy
  @forum_post = ForumPost.find(params[:forum_post_id])
  @comment=@forum_post.comments.find(params[:id])
  @comment.destroy
  redirect_to forum_post_path(@forum_post)
 end

end
