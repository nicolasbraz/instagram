class CommentsController < ApplicationController
  before_action :set_post

  def create
    @post.comments.create(user: current_user, body: params[:comment_body])
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end
end
