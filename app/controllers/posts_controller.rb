class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit]

  def show
  end

  private
  def set_post
    @post = Post.find_by(slug: params[:slug])
  end
end
