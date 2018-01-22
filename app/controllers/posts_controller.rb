class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit]

  def show
    puts "you are here #{params[:slug]} - #{@post.inspect rescue nil}"
  end

  private
  def set_post
    @post = Post.find_by(slug: params[:slug])
  end
end
